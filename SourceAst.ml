
module Func_Tbl = Map.Make(String)

type prog = (fdefs * expr)

and fdefs = fdef Func_Tbl.t

and fdef = ( string list * expr )

and vall =
  | IVal of int
  | BVal of bool

and expr =
  | Const of vall
  | Var   of string
  | Prim  of op * expr list
  | If    of expr * expr * expr
  | Apply of string * expr list

and op =
  | Add
  | Mult
  | Sub
  | Eq

open Printf

let rec print_prog p =
  let (fdesfs,main) = p in
  sprintf "%s\n%s" (print_fdef fdesfs) (print_expr main)

and print_fdef =
""
in
and print_expr = function
| Const(v)     -> sprintf "Const(%s)" (print_val v)
| Var(s)       -> sprintf "Var(%s)" s
| Prim(o,es)   -> sprintf "Prim(%s%s)" (print_op o) (print_list_expr es)
| If(e0,e1,e2) -> sprintf "If(%s)(%s)(%s)" (print_expr e0) (print_expr e1) (print_expr e2)
| Apply(s,es)  -> sprintf "Apply(%s%s)" s (print_list_expr es)

and print_val = function
| IVal i -> sprintf "IVal(%d)" i
| BVal b -> sprintf "BVal(%b)" b

and print_op = function
| Add -> "Add"
| Mult -> "Mul"
| Sub -> "Sub"
| Eq -> "Eq"

and print_list_expr es =
List.fold_left(fun acc i -> acc^","^(print_expr i)) "" es
