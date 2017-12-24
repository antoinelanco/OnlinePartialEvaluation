
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

let rec print_val = function
| IVal i -> Printf.printf "%d\n" i
| BVal b -> Printf.printf "%b\n" b
