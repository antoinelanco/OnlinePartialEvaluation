open SourceAst

module Env = Map.Make(String)
type env = vall Env.t

let rec eval p =
  let (fdefs,main) = p in
  let res = eval' fdefs main Env.empty in
  print_val res

and eval' fdefs main env =
  match main with
  | Const(v)   -> v
  | Var(s)     -> Env.find s env
  | Prim(o,es) ->
    let rs = List.fold_left
        (fun acc e -> acc @ [(eval' fdefs e env)] ) [] es in
    prim o rs
  | If(e0,e1,e2) -> if val_to_bool (eval' fdefs e0 env)
    then eval' fdefs e1 env
    else eval' fdefs e2 env

  | Apply(s,es) ->
    let (ss,body) = Func_Tbl.find s fdefs in
    let env' = List.fold_left2
        (fun acc str ee -> Env.add str (eval' fdefs ee env) acc)
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
  | BVal b -> b
  | IVal _ -> failwith "Not a boolean value"
