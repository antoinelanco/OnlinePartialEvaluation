
(* The type of tokens. *)

type token = 
  | TRUE
  | TL
  | SWITCH
  | SUB
  | SND
  | SEMI
  | REV
  | OR
  | NOT
  | MULT
  | LITINT of (int)
  | LET
  | LENGTH
  | ISPAIR
  | IN
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
  | DIV
  | DCOTE
  | COMMA
  | BEGIN
  | BB
  | AND
  | AFF
  | ADD

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (SourceAst.prog)
