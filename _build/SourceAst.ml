
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
  sprintf "%s\n\n%s" (print_fdef fdesfs) (print_expr main)

and print_fdef fd = Func_Tbl.fold (fun key el acc ->
  let (arg_list,exp) = el in
  let args_lists =
    let tmp = List.fold_left(fun ac i -> sprintf "%s,%s" ac i) "" arg_list in
    let taille = String.length tmp in
    if taille != 0
    then String.sub tmp 1 (taille-1)
    else tmp
  in

  sprintf "%s\n\n%s,[%s]\n%s" acc key args_lists (print_expr exp) ) fd ""

and print_expr = function
| Const(v)      -> sprintf "Const(%s)" (print_val v)
| Var(s)        -> sprintf "Var(%s)" s
| Prim(o,es)    -> sprintf "Prim(%s[%s])" (print_op o) (print_list_expr es)
| If(e0,e1,e2)  -> sprintf "If(%s)\n(%s)\n(%s)" (print_expr e0) (print_expr e1) (print_expr e2)
| Apply(s,es)   -> sprintf "Apply(%s[%s])" s (print_list_expr es)
| TL(e)         -> sprintf "Tl(%s)" (print_expr e)
| HD(e)         -> sprintf "Hd(%s)" (print_expr e)
| Length(e)     -> sprintf "Length(%s)" (print_expr e)
| Fst(e)        -> sprintf "Fst(%s)" (print_expr e)
| Snd(e)        -> sprintf "Snd(%s)" (print_expr e)
| Exists(e1,e2) -> sprintf "Exists(%s,%s)" (print_expr e1) (print_expr e2)
| Find(e1,e2)   -> sprintf "Find(%s,%s)" (print_expr e1) (print_expr e2)


and print_val = function
| IVal i       -> sprintf "IVal(%d)" i
| BVal b       -> sprintf "BVal(%b)" b
| CVal c       -> sprintf "CVal(%s)" c
| PVal (p1,p2) -> sprintf "PVal(%s,%s)" (print_val p1) (print_val p2)
| TVal l ->
  let s =
    let tmp = List.fold_left(fun ac i -> sprintf "%s;%s" ac (print_val i)) "" l in
    let taille = String.length tmp in
    if taille != 0
    then String.sub tmp 1 (taille-1)
    else tmp
  in
  sprintf "TVal(%s)" s

and print_op = function
| Add -> "Add"
| Mult -> "Mul"
| Sub -> "Sub"
| Eq -> "Eq"

and print_list_expr es =
let tmp = List.fold_left(fun acc i -> acc^","^(print_expr i)) "" es in
let taille = String.length tmp in
if taille != 0
then String.sub tmp 1 (taille-1)
else tmp
