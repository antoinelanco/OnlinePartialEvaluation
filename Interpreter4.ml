open SourceAst

let cpt = ref 0

let new_label =
  fun () -> incr cpt; Printf.sprintf "_var_%i" !cpt

let rec eval (fdefs,main) : SourceAst.prog = (* Prog -> Prog *)
  if ifExpProf main
  then (Func_Tbl.empty,Exception)
  else eval' fdefs main Env.empty

and eval' fdefs main env : SourceAst.prog = (*Eval*)
  (* Printf.printf "%s\n" (print_exprv2 "" "" main); *)
  let res_match =
    match main with

    | Let(v,e1,e2) ->
      let (fd1,ma1) = eval' fdefs e1 env in
      if ma1 = Exception then (fd1,Exception)
      else
        if inLineLet ma1
        then
          let new_env = Env.add v ma1 env in
          eval' fd1 e2 new_env
        else
          begin
            match ma1 with
            | If(r1,r2,r3) -> eval' fd1 (If(r1,Let(v,r2,e2),Let(v,r3,e2))) env
            | Switch(r1,rs,r2) ->
              let new_rs = List.map (fun (vall,e) -> (vall,Let(v,e,e2))) rs in
              eval' fd1 (Switch(r1,new_rs,(Let(v,r2,e2)))) env
            | _ ->
              let (fd2,ma2) = eval' fd1 e2 env in
              if v = ma2
              then (fd2,ma1)
              else (fd2,Let(v,ma1,ma2))

          end

    | Pair(e1,e2) ->

      let (fd1,ma1) = eval' fdefs e1 env in
      let (fd2,ma2) = eval' fd1 e2 env in
      (* Printf.printf "%s -> %s\n" (print_expr (Pair(e1,e2)) ) (print_expr (Pair(ma1,ma2))); *)
      if toLet ma1 || toLet ma2
      then
        let (cps,tab) = argToLet [ma1;ma2] in
        let r1 = List.hd tab in
        let r2 = List.hd (List.tl tab) in
        eval' fd2 (cps (Pair(r1,r2))) env
      else
        (fd2,Pair(ma1,ma2))

    | Tab(es) ->

      let (fd,ma) = List.fold_left
          (fun (acc_fd,acc_ma) element ->
             let (fd,ma) = eval' acc_fd element env in
             (fd,acc_ma@[ma]) ) (fdefs,[]) es
      in
      if allToLet ma
      then
        let (cps,tab) = argToLet ma in
        eval' fd (cps (Tab tab)) env
      else
        (fd,Tab(ma))

    | OR(e1,e2) ->

      if toLet e1 || toLet e2
      then
        let (cps,tab) = argToLet [e1;e2] in
        let r1 = List.hd tab in
        let r2 = List.hd (List.tl tab) in
        eval' fdefs (cps (OR(r1,r2))) env

      else
        let (fd1,ma1) = eval' fdefs e1 env in

        if isVal ma1
        then if val_to_bool ma1
          then (fd1,Const (BVal true))
          else
            let (fd2,ma2) = eval' fd1 e2 env in
            if isVal ma2
            then if val_to_bool ma2
              then (fd2,Const (BVal true))
              else (fd2,Const (BVal false))
            else (fd2,ma2)
        else
          let (fd2,ma2) = eval' fd1 e2 env in
          if isVal ma2
          then if val_to_bool ma2
            then (fd2,Const (BVal true))
            else (fd2,Const (BVal false))
          else (fd2,OR(ma1,ma2))

    | AND(e1,e2) ->

      if toLet e1 || toLet e2
      then
        let (cps,tab) = argToLet [e1;e2] in
        let r1 = List.hd tab in
        let r2 = List.hd (List.tl tab) in
        eval' fdefs (cps (AND(r1,r2))) env

      else
        let (fd1,ma1) = eval' fdefs e1 env in

        if isVal ma1
        then
          if val_to_bool ma1
          then
            let (fd2,ma2) = eval' fd1 e2 env in
            if isVal ma2
            then
              if val_to_bool ma2
              then (fd2,Const (BVal true))
              else (fd2,Const (BVal false))
            else (fd2,ma2)
          else (fd1,Const (BVal false))
        else
          let (fd2,ma2) = eval' fd1 e2 env in
          if isVal ma2
          then
            if val_to_bool ma2
            then (fd2,ma1)
            else (fd2,Const (BVal false))
          else (fd2,AND(ma1,ma2))

    | Prim(o,es) ->
      let (fd,ma) = List.fold_left
          (fun acc element ->
             let (acc_fd,acc_ma) = acc in
             let (fd,ma) = eval' acc_fd element env in
             (fd,acc_ma@[ma]) ) (fdefs,[]) es
      in
      if allToLet ma
      then
        let (cps,tab) = argToLet ma in
        eval' fd (cps (Prim(o,tab))) env
      else

        (* if allIsVal ma
        then  *)
        (fd,prim o ma)
        (* else (fd,Prim(o,ma)) *)

    | If(e0,e1,e2) ->
      let (fd0,ma0) = eval' fdefs e0 env in
      begin
        match ma0 with
        | Const _ ->
          if val_to_bool ma0
          then eval' fd0 e1 env
          else eval' fd0 e2 env

        | Switch(r1,rs,r2) ->
          let new_rs = List.map (fun (s1,s2) -> (s1,If(s2,e1,e2) )) rs in
          let new_r2 = If(r2,e1,r2) in
          eval' fd0 (Switch(r1,new_rs,new_r2)) env

        | _ ->

        let (fd1,ma1) = eval' fd0 e1 (Env.add ma0 (Const(BVal true)) env) in
        let (fd2,ma2) = eval' fd1 e2 (Env.add ma0 (Const(BVal false)) env) in
          begin
            match ma1,ma2 with
            | x,y when x=y -> (fd2,ma1)
            | Const(BVal true), Const(BVal false) -> (fd2,ma0)
            | Const(BVal false), Const(BVal true) -> eval' fd2 (Prim(Not,[ma0])) env
            | x, Const(BVal true) -> eval' fd2 (OR(Prim(Not,[ma0]),x)) env
            | x, Const(BVal false) -> (fd2,AND(ma0,x))
            | Const(BVal true), x -> (fd2,OR(ma0,x))
            | Const(BVal false), x -> eval' fd2 (AND(Prim(Not,[ma0]),x)) env
            | _ ->
              (fd2,If(ma0,ma1,ma2))
          end
      end

    | Apply(s,es) ->
      let (ss,body) =
        begin
          match Func_Tbl.find_opt s fdefs with
          | Some n -> n
          | None -> failwith ("La fonction "^s^" n'existe pas !")
        end in

      let (fd,ma) = List.fold_left
          (fun (acc_fd,acc_ma) e ->
             let (fd,ma) = eval' acc_fd e env  in
             (fd,acc_ma@[ma]) ) (fdefs,[]) es
      in

      if allToLet ma
      then
        let (cps,tab) = argToLet ma in
        eval' fd (cps (Apply(s,tab))) env
      else

        let z = List.fold_left2
            (fun acc str ee -> Env.add (Var str) ee acc)
            Env.empty ss ma
        in


        let sas = Env.filter(fun _ r -> isVal r) z in
        let das = Env.filter(fun _ r -> not (isVal r)) z in

        if Env.is_empty das
           then eval' fdefs body sas
           else newApply s sas das fdefs body

    | Exists(e1,e2) ->

      let (fd1,ma1) = eval' fdefs e1 env in
      let (fd2,ma2) = eval' fd1 e2 env in

      if toLet ma1 || toLet ma2
      then
        let (cps,tab) = argToLet [ma1;ma2] in
        let r1 = List.hd tab in
        let r2 = List.hd (List.tl tab) in
        eval' fd2 (cps (Exists(r1,r2))) env

      else
        begin
          match isVal ma1, ma2 with
          | true,Tab j when allIsVal j ->
            let b = List.exists (fun i -> (gFirst i) = ma1 ) j in
            (fd2,Const(BVal b))

          | false,Tab j when allIsVal j ->
            let cases = List.fold_left
                (fun acc i -> acc@[(getVal(gFirst i),Const(BVal true))] ) [] j in
            eval' fd2 (Switch(ma1,cases,Const(BVal false))) env

          | _ -> (fd2,Exists(ma1,ma2))
        end

    | Find(e1,e2) ->

      let (fd1,ma1) = eval' fdefs e1 env in
      let (fd2,ma2) = eval' fd1 e2 env in

      if toLet ma1 || toLet ma2
        then
          let (cps,tab) = argToLet [ma1;ma2] in
          let r1 = List.hd tab in
          let r2 = List.hd (List.tl tab) in
          eval' fd2 (cps (Find(r1,r2))) env

        else
          begin
            match isVal ma1, ma2 with
            | true,Tab j when allIsVal j ->
              let b = List.find_opt
                  (fun i -> gFirst i = ma1) j in
              begin
                match b with
                | Some n -> (fd2,n)
                | _ -> (fdefs,Exception)
              end

            | false,Tab j when allIsVal j ->
              let cases = List.fold_left
                  (fun acc i -> acc@[(getVal (gFirst i),i)] ) [] j in
              eval' fd2 (Switch(ma1,cases,Exception)) env

            | _ -> (fd2,Find(ma1,ma2))
          end

    | Switch(e1,es,e2) ->

      let (fd1,ma1) = eval' fdefs e1 env in
      if isVal ma1
      then
        begin
          match List.assoc_opt (getVal ma1) es with
          | Some n -> eval' fd1 n env
          | None -> eval' fd1 e2 env
        end
      else
        let (new_fdefs,new_es) = List.fold_left
            (fun acc (i1,i2) ->
               let (acc_fd,acc_ma) = acc in
               let (fd2,ma2) = eval' acc_fd i2 (Env.add ma1 (Const i1) env)  in
               if (List.exists((=) (i1,ma2)) (snd acc))
               then acc
               else (fd2,acc_ma@[(i1,ma2)])
            )
            (fdefs,[]) es
        in

        let (new_fdefs,new_e2) = eval' new_fdefs e2 env in
        (new_fdefs,Switch(ma1,new_es,new_e2))

    | x -> (fdefs,x)
  in

  let (fd,ma) = res_match in
  match Env.find_opt ma env with
  | Some n -> (fd,n)
  | None -> res_match

and env_string env : string = (*Static parameter to Hash*)
  let a = Env.fold(fun i e acc ->
      Printf.sprintf "%s_%s:%s" acc (print_expr i) (print_expr e))
      env "" in
      let res = Hashtbl.hash a in
      if res = 0 then "" else
      Printf.sprintf "_%d" res

and argToLet es =
  (* Printf.printf "%s\n" (String.concat ";" (List.map print_expr es)); *)
  List.fold_left
    (fun (acc_f,acc_t) e ->
       if toLet e
       then
         let l1 = Var (new_label ()) in
         ((fun i -> Let(l1,e,acc_f i)),acc_t@[l1])
       else (acc_f,acc_t@[e])

    ) ((fun i -> i),[]) es

and newApply s sas das fdefs body : SourceAst.prog =
  let s' = s^(env_string sas) in
  if Func_Tbl.exists (fun k _ -> k = s') fdefs
  then

    if existsApply s body
    (* if inLineApply body *)
    then
      let param = Env.fold (fun i e acc -> acc@[e]) das [] in
      (fdefs,Apply(s',param))

      else (fdefs, symbol das body)


  else
    let n_m = Func_Tbl.add s' ([],Const(IVal(0))) fdefs in
    let (e'_fd,e'_ma) = eval' n_m body sas in
    let new_das = Env.fold (fun s _ acc -> acc@[varString s] ) das [] in
    let fd = Func_Tbl.add s' (new_das,e'_ma) e'_fd in
    if existsApply s' e'_ma
    (* if inLineApply e'_ma *)
    then
      let param = Env.fold (fun i e acc -> acc@[e]) das [] in
      (fd,Apply(s',param))

    else (fd, symbol das e'_ma)


and existsApply s = function
  | Apply(ss,es) -> ss = s || List.exists (existsApply s) es
  | Const _ | Var _ | Exception -> false
  | Prim(_,es) | Tab es -> List.exists (existsApply s) es
  | If (e1,e2,e3)   -> List.exists (existsApply s) [e1;e2;e3]
  | Find (e1,e2) | Exists (e1,e2) | Pair(e1,e2) | AND(e1,e2) | OR(e1,e2)
  | Let(_,e1,e2) -> List.exists (existsApply s) [e1;e2]
  | Switch(e1,es,e2)  -> List.exists (existsApply s) [e1;e2] ||
                         List.exists (fun (_,i) -> existsApply s i) es

and symbol env : SourceAst.expr -> SourceAst.expr = function
  | Var n -> (match Env.find_opt (Var n) env with
      | Some a -> a
      | None -> Var n)

  | Prim(x,es) -> Prim (x,List.map(fun i -> symbol env i ) es)
  | Apply(x,es) -> Apply (x,List.map(fun i -> symbol env i ) es)
  | Find (e1,e2) -> Find(symbol env e1,symbol env e2)
  | Exists (e1,e2) -> Exists(symbol env e1,symbol env e2)
  | Tab(es) -> Tab(List.map(fun i -> symbol env i ) es)
  | Pair(e1,e2) -> Pair(symbol env e1,symbol env e2)
  | Let(v,e1,e2) -> Let(symbol env v, symbol env e1,symbol env e2)
  | Switch(e1,es,e2) -> Switch(symbol env e1,
                               List.map(fun (k,i) -> (k,symbol env i)) es ,symbol env e2)
  | If(e1,e2,e3) -> If(symbol env e1, symbol env e2,symbol env e3)
  | OR(e1,e2) -> OR(symbol env e1,symbol env e2)
  | AND(e1,e2) -> AND(symbol env e1,symbol env e2)
  | x -> x

and inLineApply : SourceAst.expr -> bool = function

  | Apply(_,es) -> true
  | Switch(e1,es,e2) -> inLineApply e1 || inLineApply e2
  | If(e1,e2,e3) -> inLineApply e1 || inLineApply e2 || inLineApply e3
  | Prim(_,es) -> List.exists(fun i -> inLineApply i ) es
  | Let(_,e1,e2) -> inLineApply e1 || inLineApply e2
  | _ -> false

and prim o rs : SourceAst.expr =
  match List.length rs with
  | 1 ->
    let el1 = List.hd rs in
    begin
      match o,el1 with
      | TL,Const(CVal e) -> Const(CVal (String.sub e 1 ((String.length e)-1)))
      | TL,Tab e         -> Tab (List.tl e)
      | HD,Const(CVal e) -> if (String.length e) == 0
        then Const(CVal(""))
        else Const(CVal (String.sub e 0 1))
      | HD,Tab e         -> if (List.length e) == 0
        then Tab([])
        else List.hd e
      | REV,Tab e            -> Tab(List.rev e)
      | Length,Const(CVal e) -> Const(IVal (String.length e))
      | Length,Tab e         -> Const(IVal (List.length e))
      | Fst,Pair(e1,_)       -> e1
      | Snd,Pair(_,e2)       -> e2
      | IsPair,Pair(_,_)     -> Const(BVal true)
      | IsPair,_             -> Const(BVal false)
      | Not,Const(BVal true) -> Const(BVal false)
      | Not,Const(BVal false) -> Const(BVal true)
      | Not,Prim(Not,[e])     -> e
      (* | op,Var e1-> Prim(op,[Var e1]) *)
      | op,e1 -> Prim(op,[e1])
      (* | op,e1 -> failwith (Printf.sprintf "Err0r match bin0p %s,%s"
                             (print_op op) (print_expr e1)) *)
    end
  | 2 ->
    let el1 = List.hd rs in
    let el2 = List.hd (List.tl rs) in
    begin
      match o,el1,el2 with
      | Add,Const(IVal 0),Var e    -> Var e
      | Add,Var e,Const(IVal 0)    -> Var e
      | Add,Const(IVal e1),Const(IVal e2)  -> Const(IVal(e1+e2))
      | Add,Tab(e1),Tab(e2)                  -> Tab(e1@e2)
      | Add,Tab(e1),Const(IVal(e2))          -> Tab(e1@[Const(IVal(e2))])
      | Add,Tab(e1),Const(BVal(e2))          -> Tab(e1@[Const(BVal(e2))])
      | Add,Tab(e1),Const(CVal(e2))          -> Tab(e1@[Const(CVal(e2))])
      | Add,Tab(e1),Pair(e2,e3)              -> Tab(e1@[Pair(e2,e3)])
      | Add,Const(IVal(e2)),Tab(e1)          -> Tab(Const(IVal(e2))::e1)
      | Add,Const(BVal(e2)),Tab(e1)          -> Tab(Const(BVal(e2))::e1)
      | Add,Const(CVal(e2)),Tab(e1)          -> Tab(Const(CVal(e2))::e1)
      | Add,Pair(e2,e3),Tab(e1)              -> Tab(Pair(e2,e3)::e1)
      | Mult,Const(IVal 1),Var e -> Var e
      | Mult,Const(IVal 0),Var _ -> Const(IVal 0)
      | Mult,Var e,Const(IVal 1) -> Var e
      | Mult,Var _,Const(IVal 0) -> Const(IVal 0)
      | Mult,Const(IVal e1),Const(IVal e2) -> Const(IVal(e1*e2))
      | Div,Const(IVal(e1)),Const(IVal(e2)) -> Const(IVal(e1/e2))
      | Sub,Const(IVal(e1)),Const(IVal(e2))  -> Const(IVal(e1-e2))
      | Eq,Const(IVal(e1)),Const(IVal(e2))   -> Const(BVal (e1 == e2))
      | Eq,Const(BVal(e1)),Const(BVal(e2))   -> Const(BVal (e1 == e2))
      | Eq,Var e,Const(BVal true) -> Var e
      | Eq,Const(BVal true),Var e -> Var e
      | Eq,Tab(e1),Tab(e2)                   -> Const(BVal (e1 = e2))
      | Eq,Const(CVal(e1)),Const(CVal(e2))   -> Const(BVal (e1 = e2))
      (* | op,Var e1,e2 -> Prim(op,[Var e1;e2])
      | op,e1,Var e2 -> Prim(op,[e1;Var e2]) *)
      | op,e1,e2 -> Prim(op,[e1;e2])
      (* | op,e2,e3 -> failwith (Printf.sprintf "Err0r match bin0p %s,%s,%s"
                                (print_op op) (print_expr e2) (print_expr e3)) *)
    end
  | _ -> failwith "Bin0p 0nly 1 or 2 arg"

and ifExpProf : SourceAst.expr -> bool = function
  | Const _ | Var _ -> false
  | Exception       -> true
  | Prim(_,es) | Apply(_,es) | Tab es -> List.exists(fun i -> ifExpProf i ) es
  | If (e1,e2,e3)   -> ifExpProf e1 || (ifExpProf e2 && ifExpProf e3)
  | Find (e1,e2) | Exists (e1,e2) | Pair(e1,e2) | AND(e1,e2) | OR(e1,e2)
  | Let(_,e1,e2) -> ifExpProf e1 || ifExpProf e2
  | Switch(e1,_,_)  -> ifExpProf e1


and val_to_bool : SourceAst.expr -> bool = function
  | Const(BVal b) -> b
  | _ -> failwith "N0t a b00lean value"

and allIsVal (es: SourceAst.expr list) : bool =
  List.fold_left  (fun acc -> function
      | Const _ -> acc
      | Tab es when allIsVal es -> acc
      | Pair (e1,e2) when isVal e1 && isVal e2 -> acc
      | _ -> false ) true es

and isVal : SourceAst.expr -> bool  = function
  | Const _ -> true
  | Tab es -> allIsVal es
  | Pair (e1,e2) -> isVal e1 && isVal e2
  | _ -> false

and allIsValAndVar (es: SourceAst.expr list) : bool =
  List.fold_left  (fun acc -> function
      | Const _ | Var _ -> acc
      | Tab es when allIsValAndVar es -> acc
      | Pair (e1,e2) when inLineLet e1 && inLineLet e2 -> acc
      | _ -> false ) true es

and inLineLet : SourceAst.expr -> bool  = function
  | Const _ | Var _ -> true
  | Tab es -> allIsVal es
  | Pair (e1,e2) -> inLineLet e1 && inLineLet e2
  | _ -> false

and toLet : SourceAst.expr -> bool = function
  | If _ | Switch _ |Let _ -> true
  | Find (e1,Tab j) | Exists (e1,Tab j) when not(isVal e1) && allIsVal j -> true
  | Prim(_,es) | Apply(_,es) | Tab es -> List.exists(fun i -> toLet i ) es
  | Pair(e1,e2) | AND(e1,e2) | OR(e1,e2) | Find (e1,e2) | Exists (e1,e2)
            -> toLet e1 || toLet e2
  | _ -> false

and allToLet (es: SourceAst.expr list) : bool =
  List.exists toLet es

and getVal : SourceAst.expr -> SourceAst.vall = function
  | Const n -> n
  | _ -> failwith "N0t Const"

and gFirst : SourceAst.expr -> SourceAst.expr = function
  | Pair (e1,e2) -> e1
  | n -> n

and varString : SourceAst.expr -> string = function
  | Var n -> n
  | _ -> failwith "Is N0T a Var"
