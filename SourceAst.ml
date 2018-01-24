
module Func_Tbl = Map.Make(String)

type prog = (fdefs * expr)

and fdefs = fdef Func_Tbl.t

and fdef = ( string list * expr )

and vall =
  | IVal of int
  | BVal of bool
  | CVal of string
  | TVal of vall list
  | PVal of vall * vall

and expr =
  | Exception
  | Const  of vall
  | Var    of string
  | Prim   of op * expr list
  | If     of expr * expr * expr
  | Apply  of string * expr list
  | TL     of expr
  | HD     of expr
  | Length of expr
  | Fst    of expr
  | Snd    of expr
  | IsEven of expr
  | Exists of expr * expr
  | Find   of expr * expr

and op =
  | Add
  | Mult
  | Sub
  | Eq

open Printf

let rec print_prog p =
  let (fdesfs,main) = p in
  sprintf "Definition Fonction :\n %s\nMain :\n%s\n" (print_fdef fdesfs) (print_exprv2 "   " "   " main)

and print_fdef fd = Func_Tbl.fold (fun key el acc ->
  let (arg_list,exp) = el in
  let args_lists =
    let tmp = List.fold_left(fun ac i -> sprintf "%s,%s" ac i) "" arg_list in
    let taille = String.length tmp in
    if taille != 0
    then String.sub tmp 1 (taille-1)
    else tmp
  in

  sprintf "%s\n\nFonction : %s(%s){\n%s\n}\n" acc key args_lists (print_exprv2 "   " "   " exp) ) fd ""

and print_exprv2 space now = function
| Exception      -> sprintf "%sException" now
| Const(v)      -> sprintf "%s%s" now (print_val v)
| Var(s)        -> sprintf "%s%s" now s
| Prim(o,es)    -> sprintf "%s%s%s%s" now (print_exprv2 space "" (List.hd es)) (print_op o) (print_exprv2 space "" (List.hd (List.tl es)))
| Apply(s,es)   -> sprintf "%s%s(%s)" now s (print_list_expr es)
| TL(e)         -> sprintf "%sTl(%s)" now (print_exprv2 space "" e)
| HD(e)         -> sprintf "%sHd(%s)" now (print_exprv2 space "" e)
| Length(e)     -> sprintf "%sLength(%s)" now (print_exprv2 space "" e)
| Fst(e)        -> sprintf "%sFst(%s)" now (print_exprv2 space "" e)
| Snd(e)        -> sprintf "%sSnd(%s)" now (print_exprv2 space "" e)
| IsEven(e)     -> sprintf "%sIsEven(%s)" now (print_exprv2 space "" e)
| Exists(e1,e2) -> sprintf "%sExists(%s,%s)" now (print_exprv2 space "" e1) (print_exprv2 space "" e2)
| Find(e1,e2)   -> sprintf "%sFind(%s,%s)" now (print_exprv2 space "" e1) (print_exprv2 space "" e2)

| If(e0,e1,e2)  -> sprintf "%sif(%s){\n%s\n%s}else{\n%s\n%s}"
now
(print_exprv2 (space^"   ") "" e0)
(print_exprv2 (space^"   ") (space^"   ") e1)
space
(print_exprv2 (space^"   ") (space^"   ") e2)
space

and print_expr = function
| Exception      -> sprintf "Exception"
| Const(v)      -> sprintf "%s" (print_val v)
| Var(s)        -> s
| Prim(o,es)    -> sprintf "%s%s%s" (print_expr (List.hd es)) (print_op o) (print_expr (List.hd (List.tl es)))
| If(e0,e1,e2)  -> sprintf "If(%s)\n(%s)\n(%s)" (print_expr e0) (print_expr e1) (print_expr e2)
| Apply(s,es)   -> sprintf "%s(%s)" s (print_list_expr es)
| TL(e)         -> sprintf "Tl(%s)" (print_expr e)
| HD(e)         -> sprintf "Hd(%s)" (print_expr e)
| Length(e)     -> sprintf "Length(%s)" (print_expr e)
| Fst(e)        -> sprintf "Fst(%s)" (print_expr e)
| Snd(e)        -> sprintf "Snd(%s)" (print_expr e)
| IsEven(e)     -> sprintf "IsEven(%s)" (print_expr e)
| Exists(e1,e2) -> sprintf "Exists(%s,%s)" (print_expr e1) (print_expr e2)
| Find(e1,e2)   -> sprintf "Find(%s,%s)" (print_expr e1) (print_expr e2)

and print_val = function
| IVal i       -> sprintf "%d" i
| BVal b       -> sprintf "%b" b
| CVal c       -> sprintf "'%s'" c
| PVal (p1,p2) -> sprintf "(%s,%s)" (print_val p1) (print_val p2)
| TVal l ->
  let s =
    let tmp = List.fold_left(fun ac i -> sprintf "%s;%s" ac (print_val i)) "" l in
    let taille = String.length tmp in
    if taille != 0
    then String.sub tmp 1 (taille-1)
    else tmp
  in
  sprintf "[%s]" s

and print_op = function
| Add -> "+"
| Mult -> "*"
| Sub -> "-"
| Eq -> "=="

and print_list_expr es =
let tmp = List.fold_left(fun acc i -> acc^","^(print_expr i)) "" es in
let taille = String.length tmp in
if taille != 0
then String.sub tmp 1 (taille-1)
else tmp


and merge_vars k v1 v2 =
  match v1, v2 with
  |Some v1,_ -> Some v1
  |None,Some v2 -> Some v2
  |None,None -> None
