open SourceAst

module Env = Map.Make(String)
type env = expr Env.t

let rec eval p =
  let (fdefs,main) = p in
  let res = eval' fdefs main Env.empty in
  Printf.printf "%s\n" (print_expr res)

and eval' fdefs main env =
  match main with
  | Const(v)   -> Const(v)
  | Var(s)     ->
    let v = Env.find_opt s env in
    (match v with
     | Some n -> n
     | None -> Var(s))

  | Prim(o,es) ->
    let rs = List.fold_left
        (fun acc e -> acc @ [(eval' fdefs e env)] ) [] es in

    if (allIsVal rs)
    then Const(prim o (getVal rs))
    else Prim(o,rs)


  | If(e0,e1,e2) ->
    let r0 = eval' fdefs e0 env in
    if isVal r0
    then
      (if (val_to_bool r0)
       then (eval' fdefs e1 env)
       else (eval' fdefs e2 env))
    else
      (If(r0,(eval' fdefs e1 env),(eval' fdefs e2 env)))

  | Apply(s,es) ->
    let (ss,body) = Func_Tbl.find s fdefs in
    let env' = List.fold_left2
        (fun acc str ee ->
          Env.add str (eval' fdefs ee env) acc)
        Env.empty ss es in

    eval' fdefs body env'


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
