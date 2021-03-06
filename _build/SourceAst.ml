module Func_Tbl = Map.Make(String)

type prog = (fdefs * expr)

and fdefs = fdef Func_Tbl.t

and fdef = ( string list * expr )

and vall =
  | IVal of int
  | BVal of bool
  | CVal of string

and expr =
  | Exception
  | Const  of vall
  | Var    of string
  | Prim   of op * expr list
  | If     of expr * expr * expr
  | Apply  of string * expr list
  | Exists of expr * expr
  | Find   of expr * expr
  | Switch of expr * case list * expr
  | Pair   of expr * expr
  | Tab    of expr list
  | AND    of expr * expr
  | OR     of expr * expr
  | Let    of expr * expr * expr


and case = vall * expr

and op =
  | Add
  | Mult
  | Div
  | Sub
  | Eq
  | TL
  | HD
  | REV
  | Length
  | Fst
  | Snd
  | IsPair
  | Not

module Env = Map.Make(struct type t = expr let compare = compare end)
type env = expr Env.t

open Printf

let rec print_prog p =
  let (fdesfs,main) = p in
  sprintf "Definition Fonction :\n %s\nMain :\n%s\n" (print_fdef fdesfs) (print_exprv2 "   " "   " main)

and print_fdef fd = Func_Tbl.fold (fun key el acc ->
    let (arg_list,exp) = el in
    let args_lists = String.concat "," arg_list in

    sprintf "%s\n\nFonction : %s(%s){\n%s\n}\n" acc key args_lists (print_exprv2 "   " "   " exp) ) fd ""

and print_exprv2 space now = function
  | Exception     -> sprintf "%sException" now
  | Const(v)      -> sprintf "%s%s" now (print_val v)
  | Var(s)        -> sprintf "%s%s" now s
  | Prim(o,es)    -> sprintf "%s%s" now (print_prim space es o)
  | Apply(s,es)   -> sprintf "%s%s(%s)" now s (String.concat "," (List.map print_expr es))
  | Find(e1,e2)   -> sprintf "%sFind(%s,%s)" now (print_exprv2 space "" e1) (print_exprv2 space "" e2)
  | Exists(e1,e2) -> sprintf "%sExists(%s,%s)" now (print_exprv2 space "" e1) (print_exprv2 space "" e2)
  | Pair(e1,e2)   -> sprintf "%s(%s,%s)" now (print_exprv2 space "" e1) (print_exprv2 space "" e2)
  | OR(e1,e2)     -> sprintf "%s%s OR \n%s%s" now (print_exprv2 space "" e1) space (print_exprv2 space "" e2)
  | AND(e1,e2)    -> sprintf "%s%s AND \n%s%s" now (print_exprv2 space "" e1) space (print_exprv2 space "" e2)
  | Tab(es)       -> sprintf "%sTab[%s]" now (String.concat ";" (List.map print_expr es))
  | Let(v,e1,e2)  -> sprintf "%sLet %s <- %s in\n%s%s" now (print_expr v)
                       (print_exprv2 (space^"   ") "" e1) space (print_exprv2 (space^"   ") "" e2)

  | Switch(e1,es,e2) -> sprintf "%sSwitch(%s):\n%s%sDefault -> %s"
                          now (print_exprv2 (space^"   ") "" e1) (print_case es (space^"   "))
                          (space^"   ") (print_exprv2 (space^"   ") "" e2)

  | If(e0,e1,e2)  -> sprintf "%sIf(%s){\n%s\n%s}Else{\n%s\n%s}"
                       now (print_exprv2 (space^"   ") "" e0)
                       (print_exprv2 (space^"   ") (space^"   ") e1)
                       space (print_exprv2 (space^"   ") (space^"   ") e2)
                       space


and print_case es space =
  let tmp = List.fold_left
      (fun acc (i1,i2) -> acc^space^"Case("^(print_val i1)^") -> "^(print_exprv2 space "" i2 )^"\n")
      "" es in

  tmp


and print_expr = function
  | Exception      -> sprintf "Exception"
  | Const(v)      -> sprintf "%s" (print_val v)
  | Var(s)        -> s
  | Prim(o,es)    -> print_prim "" es o
  | If(e0,e1,e2)  -> sprintf "If(%s)\n(%s)\n(%s)" (print_expr e0) (print_expr e1) (print_expr e2)
  | Apply(s,es)   -> sprintf "%s(%s)" s (String.concat "," (List.map print_expr es))
  | Exists(e1,e2) -> sprintf "Exists(%s,%s)" (print_expr e1) (print_expr e2)
  | Find(e1,e2)   -> sprintf "Find(%s,%s)" (print_expr e1) (print_expr e2)
  | Switch(e1,es,e2) -> sprintf "Switch(%s):\n%sDefault -> %s" (print_expr e1) (print_case es "   ") (print_expr e2)
  | Pair(e1,e2)  -> sprintf "(%s,%s)" (print_expr e1) (print_expr e2)
  | OR(e1,e2)    -> sprintf "%s OR %s" (print_expr e1) (print_expr e2)
  | AND(e1,e2)   -> sprintf "%s AND %s" (print_expr e1) (print_expr e2)
  | Tab(es)      -> sprintf "Tab(%s)" (String.concat ";" (List.map print_expr es))
  | Let(v,e1,e2) -> sprintf "Let %s <- %s in\n%s" (print_expr v) (print_expr e1)
                      (print_expr e2)


and print_val = function
  | IVal i       -> sprintf "%d" i
  | BVal b       -> sprintf "%b" b
  | CVal c       -> sprintf "'%s'" c

and print_prim space es op =

  let new_es = (List.map (print_exprv2 space "") es) in
  match op with
  | Add -> print_binop "+" new_es
  | Mult -> print_binop "*" new_es
  | Div  -> print_binop "/" new_es
  | Sub -> print_binop "-" new_es
  | Eq -> print_binop "==" new_es
  | TL -> sprintf "TL(%s)" (List.hd new_es)
  | HD -> sprintf "HD(%s)" (List.hd new_es)
  | REV -> sprintf "REV(%s)" (List.hd new_es)
  | Fst -> sprintf "Fst(%s)" (List.hd new_es)
  | Snd -> sprintf "Snd(%s)" (List.hd new_es)
  | Length -> sprintf "Length(%s)" (List.hd new_es)
  | IsPair -> sprintf "IsPair(%s)" (List.hd new_es)
  | Not -> sprintf "Not(%s)" (List.hd new_es)

and print_binop op es = sprintf "%s %s %s" (List.hd es) op (List.hd (List.tl es))

and merge_vars k v1 v2 =
  match v1, v2 with
  |Some v1,_ -> Some v1
  |None,Some v2 -> Some v2
  |None,None -> None
