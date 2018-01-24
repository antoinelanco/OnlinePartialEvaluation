exception Error

type token = 
  | VAR
  | TVAL
  | TRUE
  | TL
  | SUB
  | SND
  | SEMI
  | PVAL
  | PRIM
  | MULT
  | LITINT of (int)
  | LENGTH
  | IVAL
  | IF
  | IDENT of (string)
  | HD
  | FST
  | FIND
  | FALSE
  | EXISTS
  | EXCEP
  | EQ
  | EOF
  | END
  | EB
  | DCOTE
  | CVAL
  | CONST
  | COMMA
  | BVAL
  | BEGIN
  | BB
  | APPLAY
  | ADD


val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (SourceAst.prog)