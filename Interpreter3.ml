open SourceAst

module Env = Map.Make(String)
type env = expr Env.t

let rec eval p = (* Prog -> Prog *)
  let (fdefs,main) = p in
  let prog' = eval' fdefs main Env.empty Func_Tbl.empty in
  Printf.printf "%s\n" (print_prog prog')

and eval' fdefs main env monad =
  match main with
  | Const(v)   -> (monad,Const(v))
  | Var(s)     ->
    let v = Env.find_opt s env in
    (match v with
     | Some n -> (monad,n)
     | None -> (monad,Var(s)))

  | Prim(o,es) ->
    let rs = List.fold_left
        (fun acc e ->
          let (acc_fd,acc_ma) = acc in
          let (fd,ma) = eval' fdefs e env acc_fd in
          (Func_Tbl.merge merge_vars fd acc_fd,
            acc_ma@[ma]) ) (monad,[]) es
    in

    let (fd,ma) = rs in
    if (allIsVal ma)
    then (fd,Const(prim o (getVal ma)))
    else (fd,Prim(o,ma))


  | If(e0,e1,e2) ->
    let (fd0,ma0) = eval' fdefs e0 env monad in
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
            acc_ma@[ma]) ) (monad,[]) es
    in


    let (rs_fd,rs_ma) = rs in
    let z = List.fold_left2
        (fun acc str ee ->
          Env.add str ee acc)
        Env.empty ss rs_ma
    in

    let sas = Env.filter(fun s r -> if isVal r then true else false) z in
    let das = Env.filter(fun s r -> if isVal r then false else true) z in

    if Env.is_empty das
    then eval' fdefs body sas rs_fd
    else
    begin
      let s' = s^(env_string sas) in
      let new_monad =
      match (Func_Tbl.find_opt s' rs_fd) with
      | Some _ -> rs_fd
      | None ->
        let n_m = Func_Tbl.add s' ([],Const(IVal(0))) rs_fd in
        let (e'_fd,e'_ma) = eval' fdefs body sas n_m in
        let new_das = Env.fold (fun s r acc -> acc@[s] ) das [] in
        Func_Tbl.add s' (new_das,e'_ma) e'_fd
      in

      let param = Env.fold (fun i e acc -> acc@[e]) das [] in
      (new_monad,Apply(s',param))

    end


and env_string env =

let a =
Env.fold(fun i e acc -> Printf.sprintf "%s_%s:%s" acc i (print_expr e)) env ""
in

Printf.sprintf "_%s" (string_of_int (Hashtbl.hash a))

and prim o rs =
  if List.length rs <> 2 then failwith "Bin0p need 0nly 2 arg";
  let el1 = List.hd rs in
  let el2 = List.hd (List.tl rs) in
  match o,el1,el2 with
  | Add,IVal(e1),IVal(e2)  -> IVal(e1+e2)
  | Mult,IVal(e1),IVal(e2) -> IVal(e1*e2)
  | Sub,IVal(e1),IVal(e2)  -> IVal(e1-e2)
  | Eq,IVal(e1),IVal(e2)   -> BVal (e1 == e2)
  | Eq,BVal(e1),BVal(e2)   -> BVal (e1 == e2)
  | _ -> failwith "Err0r match bin0p"

and merge_vars k v1 v2 =
  match v1, v2 with
  |Some v1,_ -> Some v1
  |None,Some v2 -> Some v2
  |None,None -> None

and val_to_bool = function
  | Const(BVal b) -> b
  | _ -> failwith "N0t a b00lean value"

and allIsVal = List.fold_left
    (fun acc i -> match i with
       | Const _ -> acc
       | _ -> false ) true

and getVal = List.map
    (fun i -> match i with
       | Const(n) -> n
       | _ -> failwith "C0nst 0nly")

and isVal = function
  | Const _ -> true
  | _ -> false
