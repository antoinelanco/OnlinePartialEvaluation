exception Error

type token = 
  | VAR
  | TRUE
  | SUB
  | PRIM
  | MULT
  | LITINT of (int)
  | IVAL
  | IF
  | IDENT of (string)
  | FALSE
  | EQ
  | EOF
  | END
  | EB
  | DCOTE
  | CONST
  | COMMA
  | BVAL
  | BEGIN
  | BB
  | APPLAY
  | ADD


val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (SourceAst.prog)