open SourceAst

module Env = Map.Make(String)
type env = expr Env.t

let rec eval p = (* Prog -> Prog *)
  let (fdefs,main) = p in
  let prog' = eval' fdefs main Env.empty Func_Tbl.empty in
  Printf.printf "%s\n" (print_prog prog')

and eval' fdefs main env state =
  match main with
  | Exception   -> (state,Exception)
  | Const(v)   -> (state,Const(v))

  | Var(s)     ->
    let v = Env.find_opt s env in
    (match v with
     | Some n -> (state,n)
     | None -> (state,Var(s)))

  | Prim(o,es) ->
    let rs = List.fold_left
        (fun acc e ->
          let (acc_fd,acc_ma) = acc in
          let (fd,ma) = eval' fdefs e env acc_fd in
          (Func_Tbl.merge merge_vars fd acc_fd,
            acc_ma@[ma]) ) (state,[]) es
    in

    let (fd,ma) = rs in
    if (allIsVal ma)
    then (fd,Const(prim o (getVal ma)))
    else (fd,Prim(o,ma))

  | If(e0,e1,e2) ->
    let (fd0,ma0) = eval' fdefs e0 env state in
    if isVal ma0
    then
      (if (val_to_bool ma0)
       then (eval' fdefs e1 env fd0)
       else (eval' fdefs e2 env fd0))
    else
      (let (fd1,ma1) = eval' fdefs e1 env fd0 in
      let (fd2,ma2) = eval' fdefs e2 env fd1 in
      (fd2,If(ma0,ma1,ma2)))

  | Apply(s,es) ->

    let (ss,body) = Func_Tbl.find s fdefs in

    let rs = List.fold_left
        (fun acc e ->
          let (acc_fd,acc_ma) = acc in
          let (fd,ma) = eval' fdefs e env acc_fd in
          (Func_Tbl.merge merge_vars fd acc_fd,
            acc_ma@[ma]) ) (state,[]) es
    in


    let (rs_fd,rs_ma) = rs in
    let z = List.fold_left2
        (fun acc str ee ->
          Env.add str ee acc)
        Env.empty ss rs_ma
    in


    let sas = Env.filter(fun s r -> if isVal r then true else false) z in
    let das = Env.filter(fun s r -> if isVal r then false else true) z in

    ifdas s sas das rs_fd fdefs body


  | TL(e) ->
    let (fd0,ma0) = eval' fdefs e env state in
    if isVal ma0
    then (match ma0 with
    | Const(TVal n) -> (fd0,Const(TVal (List.tl n)))
    | _ -> failwith "tl 0nly with TVal")

    else (fd0,TL(ma0))

  | HD(e) ->
    let (fd0,ma0) = eval' fdefs e env state in
    if isVal ma0
    then (match ma0 with
    | Const(TVal n) -> (fd0,Const(List.hd n))
    | _ -> failwith "hd 0nly with TVal")

    else (fd0,HD(ma0))

  | Length(e) ->
    let (fd0,ma0) = eval' fdefs e env state in
    if isVal ma0
    then (match ma0 with
    | Const(TVal n) -> (fd0,Const(IVal (List.length n)))
    | _ -> failwith "Length 0nly with TVal")

    else (fd0,HD(ma0))

  | Fst(e) ->
    let (fd0,ma0) = eval' fdefs e env state in
    if isVal ma0
    then (match ma0 with
    | Const(PVal(n1,n2)) -> (fd0,Const(n1))
    | _ -> failwith "fst 0nly with PVal")

    else (fd0,Fst(ma0))

  | Snd(e) ->
    let (fd0,ma0) = eval' fdefs e env state in
    if isVal ma0
    then (match ma0 with
    | Const(PVal(n1,n2)) -> (fd0,Const(n2))
    | _ -> failwith "snd 0nly with PVal")

    else (fd0,Snd(ma0))

  | Exists(e1,e2) ->
    let (fd1,ma1) = eval' fdefs e1 env state in
    let (fd2,ma2) = eval' fdefs e2 env fd1 in
    (match isVal ma1, isVal ma2 with
    | true,true ->
      (match ma2 with
        | Const(TVal n) ->
          let b = List.exists (fun i -> if (gFirst i) = (gVal ma1) then true else false) n in
                          (fd2,Const(BVal b))
        | _ -> failwith "arg 2 0f exists need t0 be a TVal")

    | false,true ->
      (match ma2 with
        | Const(TVal n) ->
          if (List.length n) == 0
          then (fd2,Const(BVal false))
          else
          (fd2,List.fold_left (fun acc i ->
            If(Prim(Eq,[ma1;Const(gFirst i)]),Const(BVal true),acc))
          (Prim(Eq,[ma1;Const(gFirst (List.hd n))]))
          (List.tl n))


        | _ -> failwith "arg 2 0f exists need t0 be a TVal")

    | _,_ -> (fd2,Exists(ma1,ma2)))

  | Find(e1,e2) ->
    let (fd1,ma1) = eval' fdefs e1 env state in
    let (fd2,ma2) = eval' fdefs e2 env fd1 in

    (match isVal ma1, isVal ma2 with
      | true,true ->
        (match ma2 with
          | Const(TVal n) -> let b = List.find (fun i -> if (gFirst i) = (gVal ma1) then true else false) n in
                        (fd2,Const(b))
          | _ -> failwith "arg 2 0f find need t0 be a TVal")

      | false,true ->
        (match ma2 with
          | Const(TVal n) ->
            (fd2,List.fold_left (fun acc i ->
              If(Prim(Eq,[ma1;Const(gFirst i)]),Const i ,acc))
            (If(Prim(Eq,[ma1;Const(gFirst (List.hd n))]),Const(List.hd n),Exception))
            (List.tl n))
          | _ -> failwith "arg 2 0f find need t0 be a TVal"
            )

      |_,_ -> (fd2,Find(ma1,ma2)) )


and env_string env =

  let a =
  Env.fold(fun i e acc -> Printf.sprintf "%s_%s:%s" acc i (print_expr e)) env ""
  in

  Printf.sprintf "_%s" (string_of_int (Hashtbl.hash a))

and print_env = Env.iter (fun k e -> Printf.printf "\nEnv %s -> %s\n" k (print_expr e) )

and ifdas s sas das state fdefs body =

  if Env.is_empty das
  then eval' fdefs body sas state
  else
  begin
    match findif das with
      | Some (elemfind,k) -> applyiftoifapply elemfind k s sas das state fdefs body
      | None -> newApply s sas das state fdefs body
  end

and applyiftoifapply elemfind k s sas das rs_fd fdefs body =

  let (bef,aft) = getBeforIf elemfind in
  match aft with
  | If (e1,e2,e3) ->

    let (a1,b1) = eval' fdefs (bef e2) sas rs_fd in
    let (a2,b2) = eval' fdefs (bef e3) sas rs_fd in


    let new_das = Env.remove k das in
    let (new_sas1,new_das1) = if (isVal(b1)) then (Env.add k b1 sas,new_das) else (sas,Env.add k b1 new_das) in
    let (new_sas2,new_das2) = if (isVal(b2)) then (Env.add k b2 sas,new_das) else (sas,Env.add k b2 new_das) in


    let (a,b) = ifdas s new_sas1 new_das1 a1 fdefs body in
    let (c,d) = ifdas s new_sas2 new_das2 a2 fdefs body in

    let new_state = Env.merge merge_vars a c in


    (match ifExpProf b,ifExpProf d with
    | true,true -> rs_fd,Exception
    | false,true -> a,If(e1,b,Exception)
    | true,false -> c,If(e1,Exception,d)
    | false,false -> new_state,If(e1,b,d))


  | _ -> failwith "forcement un if"




and newApply s sas das state fdefs body =
  let s' = s^(env_string sas) in
  let new_state =
  match (Func_Tbl.find_opt s' state) with
  | Some _ -> state
  | None ->
    let n_m = Func_Tbl.add s' ([],Const(IVal(0))) state in
    let (e'_fd,e'_ma) = eval' fdefs body sas n_m in
    let new_das = Env.fold (fun s _ acc -> acc@[s] ) das [] in
    Func_Tbl.add s' (new_das,e'_ma) e'_fd
  in

  let param = Env.fold (fun i e acc -> acc@[e]) das [] in
  (new_state,Apply(s',param))

and getBeforIf exp_r =
  let rec aux acc = function
  | Snd e -> aux (fun x -> acc (Snd x)) e
  | Fst e -> aux (fun x -> acc (Fst x)) e
  | TL  e -> aux (fun x -> acc (TL x)) e
  | HD  e -> aux (fun x -> acc (HD x)) e
  | Length e -> aux (fun x -> acc (Length x)) e
  | If (e1,e2,e3) -> (acc,If(e1,e2,e3))
  | Const _ | Var _ -> failwith "getBeforIf 0nly with if"
  | n -> Printf.printf "%s" (print_expr n); failwith "a faire"
  in
  aux (fun x -> x) exp_r

and findif expr_list =
  Env.fold (fun k i acc ->
  if (existsif i)
  then Some (i,k)
  else acc)
  expr_list None

and existsif = function
  | Prim(_,es) -> List.exists(fun i -> existsif i ) es
  | If _ -> true
  | Apply(_,es) -> List.exists(fun i -> existsif i ) es
  | TL(e) -> existsif e
  | HD(e) -> existsif e
  | Length(e) -> existsif e
  | Fst(e) -> existsif e
  | Snd(e) -> existsif e
  | _ -> false

and prim o rs =
  if List.length rs <> 2 then failwith "Bin0p need 0nly 2 arg";
  let el1 = List.hd rs in
  let el2 = List.hd (List.tl rs) in
  match o,el1,el2 with
  | Add,IVal(e1),IVal(e2)  -> IVal(e1+e2)
  | Add,TVal(e1),TVal(e2)  -> TVal(e1@e2)
  | Mult,IVal(e1),IVal(e2) -> IVal(e1*e2)
  | Sub,IVal(e1),IVal(e2)  -> IVal(e1-e2)
  | Eq,IVal(e1),IVal(e2)   -> BVal (e1 == e2)
  | Eq,BVal(e1),BVal(e2)   -> BVal (e1 == e2)
  | Eq,TVal(e1),TVal(e2)   -> BVal (e1 = e2)
  | _ -> failwith "Err0r match bin0p"

and ifExp = function
  | Exception -> true
  | _ -> false

and ifExpProf = function
  | Const _ | Var _ -> false
  | Prim(_,es) -> List.exists(fun i -> ifExpProf i ) es
  | Apply(_,es) -> (List.exists(fun i -> ifExpProf i ) es)
  | If (e1,e2,e3) -> ifExpProf e1 || (ifExpProf e2 && ifExpProf e3)
  | Find (e1,e2) -> ifExpProf e1 || ifExpProf e2
  | Exists (e1,e2) -> ifExpProf e1 || ifExpProf e2
  | TL(e) -> ifExpProf e
  | HD(e) -> ifExpProf e
  | Length(e) -> ifExpProf e
  | Fst(e) -> ifExpProf e
  | Snd(e) -> ifExpProf e
  | Exception -> true

and val_to_bool = function
  | Const(BVal b) -> b
  | _ -> failwith "N0t a b00lean value"

and allIsVal = List.fold_left
    (fun acc i -> match i with
       | Const _ -> acc
       | _ -> false ) true

and getVal = List.map
    (fun i -> match i with
       | Const n -> n
       | _ -> failwith "C0nst 0nly")

and isVal = function
  | Const _ -> true
  | _ -> false

and gVal = function
  | Const n -> n
  | _ -> failwith "N0t Const"

and gFirst = function
  | PVal (n1,n2) -> gFirst n1
  | TVal n -> failwith "gFirst TVal"
  | n -> n
