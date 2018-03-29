
(* The type of tokens. *)

type token = 
  | TRUE
  | TL
  | SWITCH
  | SUB
  | SND
  | SEMI
  | MULT
  | LITINT of (int)
  | LENGTH
  | ISPAIR
  | IF
  | IDENT of (string)
  | HD
  | FUN
  | FST
  | FIND
  | FE
  | FB
  | FALSE
  | EXISTS
  | EXCEP
  | EQ
  | EOF
  | END
  | ELSE
  | EB
  | DCOTE
  | COMMA
  | BEGIN
  | BB
  | ADD

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (SourceAst.prog)
