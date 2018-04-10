open SourceAst

let rec eval p : SourceAst.prog = (* Prog -> Prog *)
  let (fdefs,main) = p in
  eval' fdefs main Env.empty Func_Tbl.empty

and eval' fdefs main env state : SourceAst.prog = (*Eval*)
  if ifExpProf main
  then (state,Exception)
  else
    let res_match =
      match main with
      | Exception   -> (state,Exception)

      | Const(v)   -> (state,Const(v))

      | Var(s)     ->
        let v = Env.find_opt main env in
        (match v with
         | Some n -> (state,n)
         | None -> (state,Var(s)))

      | Prim(o,es) ->
        let rs = List.fold_left
            (fun acc e ->
               let (acc_fd,acc_ma) = acc in
               let (fd,ma) = eval' fdefs e env acc_fd in
               (fd,acc_ma@[ma]) ) (state,[]) es
        in

        let (fd,ma) = rs in
        if (allIsVal ma)
        then (fd,Const(prim o (mapVal ma)))
        else

          let (_,ar) = List.fold_left (fun (num,acc) elem -> (num+1,Env.add (Const(IVal num)) elem acc) ) (0,Env.empty) ma in
          begin
            match findif ar with
            | Some (elemfind,k) -> primTransfo elemfind k ar o env fdefs fd
            | None ->
              (fd,Prim(o,ma))
          end

      | If(e0,e1,e2) ->
        let (fd0,ma0) = eval' fdefs e0 env state in
        (match ma0 with
         | Const _ ->
           if val_to_bool ma0
           then eval' fdefs e1 env fd0
           else eval' fdefs e2 env fd0

         | Switch(s1,es,s2) ->
           let new_es = List.map (fun (ee1,ee2) -> (ee1,If(ee2,e1,e2) )) es in
           let new_s2 = If(s2,e1,e2) in
           let new_switch = Switch(s1,new_es,new_s2) in
           eval' fdefs new_switch env fd0

         | _ ->
           let (fd1,ma1) = eval' fdefs e1 env fd0 in
           let (fd2,ma2) = eval' fdefs e2 env fd1 in
           if ma1 = ma2
           then (fd2,ma1)
           else (fd2,If(ma0,ma1,ma2)))

      | Apply(s,es) ->
        let (ss,body) =
          begin
            match Func_Tbl.find_opt s (Func_Tbl.merge merge_vars fdefs state) with
            | Some n -> n
            | None -> failwith ("La fonction "^s^" n'existe pas !")
          end in

        let (rs_fd,rs_ma) = List.fold_left
            (fun (acc_fd,acc_ma) e ->
               let (fd,ma) = eval' fdefs e env acc_fd in
               (fd,acc_ma@[ma]) ) (state,[]) es
        in

        let z = List.fold_left2
            (fun acc str ee -> Env.add (Var(str)) ee acc)
            Env.empty ss rs_ma
        in

        let sas = Env.filter(fun s r -> isVal r) z in
        let das = Env.filter(fun s r -> not (isVal r)) z in

        ifdas s sas das rs_fd fdefs body

      | Exists(e1,e2) ->
        let (fd1,ma1) = eval' fdefs e1 env state in
        let (fd2,ma2) = eval' fdefs e2 env fd1 in
        (match isVal ma1, isVal ma2 with
         | true,true ->
           (match ma2 with
            | Const(TVal n) ->
              let b = List.exists (fun i -> if (gFirst i) = (getVal ma1) then true else false) n in
              (fd2,Const(BVal b))
            | _ -> failwith "arg 2 0f exists need t0 be a TVal")

         | false,true ->
           (match ma2 with
            | Const(TVal n) ->
              let cases = List.fold_left (fun acc i -> acc@[(gFirst i,Const(BVal true))] ) [] n in
              eval' fdefs (Switch(ma1,cases,Const(BVal false))) env fd2
            | _ -> failwith "arg 2 0f exists need t0 be a TVal")

         | _,_ -> (fd2,Exists(ma1,ma2)))

      | Find(e1,e2) ->

        let (fd1,ma1) = eval' fdefs e1 env state in
        let (fd2,ma2) = eval' fdefs e2 env fd1 in

        (match isVal ma1, isVal ma2 with
         | true,true ->
           (match ma2 with
            | Const(TVal n) ->
              let b = List.find_opt (fun i -> if (gFirst i) = (getVal ma1) then true else false) n in
              (match b with
               | Some n -> (fd2,Const(n))
               | _ -> (state,Exception))

            | _ -> failwith "arg 2 0f find need t0 be a TVal")

         | false,true ->
           (match ma2 with
            | Const(TVal n) ->
              let cases = List.fold_left (fun acc i -> acc@[(gFirst i,Const(i))] ) [] n in
              eval' fdefs (Switch(ma1,cases,Exception)) env fd2
            | _ -> failwith "arg 2 0f find need t0 be a TVal")

         |_,_ -> (fd2,Find(ma1,ma2)) )

      | Switch(e1,es,e2) ->
        let (fd1,ma1) = eval' fdefs e1 env state in
        if isVal ma1
        then
          let listRes = List.find_all (fun i -> if (gFirst (getVal ma1) ) == fst i then true else false ) es in
          if (List.length listRes) > 1
          then failwith "a faire switch"
          else
          begin
            match List.assoc_opt (getVal ma1) es with
            | Some n -> eval' fdefs n env fd1
            | None -> eval' fdefs e2 env fd1
          end
        else
          let (new_state,new_es) = List.fold_left
              (fun acc (i1,i2) ->
                 let (acc_fd,acc_ma) = acc in
                 let (fd2,ma2) = eval' fdefs i2 (Env.add ma1 (Const i1) env) acc_fd in
                 (fd2,acc_ma@[(i1,ma2)]))
              (state,[]) es
          in
          let (new_state,new_e2) = eval' fdefs e2 env new_state in
          (new_state,Switch(ma1,new_es,new_e2))
    in

    let (e,m) = res_match in
    match Env.find_opt m env with
    | Some n -> (e,n)
    | None -> res_match

and env_string env : string = (*Static parameter to Hash*)
  let a = Env.fold(fun i e acc ->
      Printf.sprintf "%s_%s:%s" acc (print_expr i) (print_expr e))
      env "" in
  Printf.sprintf "_%s" (string_of_int (Hashtbl.hash a))
  (* Printf.sprintf "_%s" a *)

and ifdas s sas das state fdefs body : SourceAst.prog =

  if Env.is_empty das
  then eval' fdefs body sas state
  else
    begin
      match findif das with
      | Some (elemfind,k) -> applyTransfo elemfind k s sas das state fdefs body
      | None -> newApply s sas das state fdefs body
    end

and primTransfo elemfind k ar o env fdefs fd : SourceAst.prog =

  match elemfind with
  | If (e1,e2,e3) ->
    let (a1,b1) = eval' fdefs e2 env fd in
    let (a2,b2) = eval' fdefs e3 env fd in

    let new_ar1 = Env.add k b1 ar in
    let new_ar2 = Env.add k b2 ar in

    let new_es1 = Env.fold (fun _ e acc -> acc@[e]) new_ar1 [] in
    let new_es2 = Env.fold (fun _ e acc -> acc@[e]) new_ar2 [] in

    eval' fdefs (If(e1,Prim(o,new_es1),Prim(o,new_es2))) env (Func_Tbl.merge merge_vars a1 a2)

  | Switch(e1,es,e2) ->

    let (new_env,new_es) = List.fold_left (fun (e,acc) (v1,ee) ->

        let (a1,b1) = eval' fdefs ee env e in
        let new_ar = Env.add k b1 ar in
        let new_es = Env.fold (fun _ e acc -> acc@[e]) new_ar [] in


        (a1,acc@[(v1,Prim(o,new_es))])

      )
        (fd,[]) es in

    let (a1,b1) = eval' fdefs e2 env fd in
    let new_ar = Env.add k b1 ar in
    let new_ess = Env.fold (fun _ e acc -> acc@[e]) new_ar [] in
    eval' fdefs (Switch(e1,new_es,Prim(o,new_ess))) env fd

  | _ -> failwith "forcement un if/switch"

and applyTransfo elemfind k s sas das rs_fd fdefs body : SourceAst.prog =

  match elemfind with
  | If (e1,e2,e3) ->

    let (a1,b1) = eval' fdefs e2 sas rs_fd in
    let (a2,b2) = eval' fdefs e3 sas rs_fd in


    let new_das = Env.remove k das in
    let (new_sas1,new_das1) = if (isVal(b1)) then (Env.add k b1 sas,new_das) else (sas,Env.add k b1 new_das) in
    let (new_sas2,new_das2) = if (isVal(b2)) then (Env.add k b2 sas,new_das) else (sas,Env.add k b2 new_das) in

    let (a,b) = ifdas s new_sas1 new_das1 a1 fdefs body in
    let (c,d) = ifdas s new_sas2 new_das2 a2 fdefs body in

    eval' fdefs (If(e1,b,d)) sas (Func_Tbl.merge merge_vars a c)


  | Switch(e1,es,e2) ->
    let new_das = Env.remove k das in

    let (new_env,new_es) = List.fold_left (fun (e,acc) (v1,ee) ->

        let (a1,b1) = eval' fdefs ee sas e in
        let (new_sas1,new_das1) = if (isVal(b1)) then (Env.add k b1 sas,new_das) else (sas,Env.add k b1 new_das) in
        let (a,b) = ifdas s new_sas1 new_das1 a1 fdefs body in
        if ifExpEnv new_das1
        then (e,acc@[(v1,Exception)])
        else (a,acc@[(v1,b)])

      )
        (rs_fd,[]) es in

    let (a1,b1) = eval' fdefs e2 sas new_env in
    let (new_sas1,new_das1) = if (isVal(b1)) then (Env.add k b1 sas,new_das) else (sas,Env.add k b1 new_das) in
    let (a,b) = ifdas s new_sas1 new_das1 a1 fdefs body in
    if ifExpEnv new_das1
    then (new_env,Switch(e1,new_es,Exception))
    else (a,Switch(e1,new_es,b))

  | _ -> failwith "forcement un if/switch"

and newApply s sas das state fdefs body : SourceAst.prog =
  let s' = s^(env_string sas) in
  begin
    match (Func_Tbl.find_opt s' state) with
    | Some _ ->
      let param = Env.fold (fun i e acc -> acc@[e]) das [] in
      (state,Apply(s',param))

    | None ->
      let n_m = Func_Tbl.add s' ([],Const(IVal(0))) state in
      let (e'_fd,e'_ma) = eval' fdefs body sas n_m in
      if existsif e'_ma
      then
        let new_das = Env.fold (fun s _ acc -> acc@[varString(s)] ) das [] in
        let state = Func_Tbl.add s' (new_das,e'_ma) e'_fd in
        let param = Env.fold (fun i e acc -> acc@[e]) das [] in
        (state,Apply(s',param))

      else
        (Func_Tbl.remove s' e'_fd,e'_ma)

  end

and findif expr_list : (SourceAst.expr * SourceAst.Env.key) option =
  Env.fold (fun k i acc ->
      if (existsif i)
      then Some (i,k)
      else acc)
    expr_list None

and existsif : SourceAst.expr -> bool = function
  | Switch _ | If _ -> true
  | Prim(_,es) -> List.exists(fun i -> existsif i ) es
  | _ -> false

and prim o rs : SourceAst.vall =
  match List.length rs with
  | 1 ->
    begin
      let el1 = List.hd rs in
      match o,el1 with
      | TL,CVal(e)       -> CVal (String.sub e 1 ((String.length e)-1))
      | TL,TVal(e)       -> TVal (List.tl e)
      | HD,CVal(e)       -> if (String.length e) == 0 then CVal("") else CVal (String.sub e 0 1)
      | HD,TVal(e)       -> if (List.length e) == 0 then TVal([]) else List.hd e
      | Length,CVal(e)   -> IVal (String.length e)
      | Length,TVal(e)   -> IVal (List.length e)
      | Fst,PVal(e1,_)   -> e1
      | Snd,PVal(_,e2)   -> e2
      | IsPair,PVal(_,_) -> BVal true
      | IsPair,_         -> BVal false
      | e1,e2 -> Printf.printf "%s,%s" (print_op e1) (print_val e2);failwith "Err0r match bin0p"

    end
  | 2 ->
    begin
      let el1 = List.hd rs in
      let el2 = List.hd (List.tl rs) in
      match o,el1,el2 with
      | Add,IVal(e1),IVal(e2)    -> IVal(e1+e2)
      | Add,TVal(e1),TVal(e2)    -> TVal(e1@e2)
      | Add,TVal(e1),IVal(e2)    -> TVal(e1@[IVal(e2)])
      | Add,TVal(e1),BVal(e2)    -> TVal(e1@[BVal(e2)])
      | Add,TVal(e1),CVal(e2)    -> TVal(e1@[CVal(e2)])
      | Add,TVal(e1),PVal(e2,e3) -> TVal(e1@[PVal(e2,e3)])
      | Mult,IVal(e1),IVal(e2)   -> IVal(e1*e2)
      | Sub,IVal(e1),IVal(e2)    -> IVal(e1-e2)
      | Eq,IVal(e1),IVal(e2)     -> BVal (e1 == e2)
      | Eq,BVal(e1),BVal(e2)     -> BVal (e1 == e2)
      | Eq,TVal(e1),TVal(e2)     -> BVal (e1 = e2)
      | Eq,CVal(e1),CVal(e2)     -> BVal (e1 = e2)
      | e1,e2,e3 -> Printf.printf "%s,%s,%s" (print_op e1) (print_val e2) (print_val e3);failwith "Err0r match bin0p"
    end
  | _ -> failwith "Bin0p 0nly 1 or 2 arg"

and ifExpProf : SourceAst.expr -> bool = function
  | Const _ | Var _ -> false
  | Exception       -> true
  | Prim(_,es) | Apply(_,es) -> List.exists(fun i -> ifExpProf i ) es
  | If (e1,e2,e3)   -> ifExpProf e1 || (ifExpProf e2 && ifExpProf e3)
  | Find (e1,e2) | Exists (e1,e2)  -> ifExpProf e1 || ifExpProf e2
  | Switch(e1,_,_)  -> ifExpProf e1

and ifExpEnv env : bool =
  Env.exists (fun k a -> if ifExpProf a then true else false ) env

and val_to_bool : SourceAst.expr -> bool = function
  | Const(BVal b) -> b
  | _ -> failwith "N0t a b00lean value"

and allIsVal : SourceAst.expr list -> bool =
  List.fold_left  (fun acc i -> match i with
      | Const _ -> acc
      | _ -> false ) true

and mapVal : SourceAst.expr list -> vall list =
  List.map (fun i -> match i with
      | Const n -> n
      | _ -> failwith "C0nst 0nly")

and isVal : SourceAst.expr -> bool  = function
  | Const _ -> true
  | _ -> false

and getVal : SourceAst.expr -> SourceAst.vall = function
  | Const n -> n
  | _ -> failwith "N0t Const"

and gFirst : SourceAst.vall -> SourceAst.vall = function
  | PVal (n1,n2) -> n1
  | TVal n -> failwith "gFirst TVal"
  | n -> n

and varString : SourceAst.expr -> string = function
  | Var n -> n
  | _ -> failwith "Is N0T a Var"
