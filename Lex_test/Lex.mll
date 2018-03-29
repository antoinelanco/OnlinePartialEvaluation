{

  open Lexing
  open Parser

  exception Error of string
}

rule token = parse
  | ['b']+
      { B }
  | ['a']
      { A }
