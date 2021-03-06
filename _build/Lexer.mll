{

  open Lexing
  open Parser
  open Printf

  exception Error of string

  let id_or_keyword =
    let h = Hashtbl.create 30 in
    List.iter (fun (s, k) -> Hashtbl.add h s k)
      [ "if",       IF;
        "else",     ELSE;
        "equal",    EQ;
        "exists",   EXISTS;
        "find",     FIND;
        "fst",      FST;
        "snd",      SND;
        "ispair",   ISPAIR;
        "tl",       TL;
        "hd",       HD;
        "rev",      REV;
        "length",   LENGTH;
        "add",      ADD;
        "mul",      MULT;
        "sub",      SUB;
        "div",      DIV;
        "and",      AND;
        "or",       OR;
        "true",     TRUE;
        "false",    FALSE;
        "exception",EXCEP;
        "switch",   SWITCH;
        "fun",      FUN;
        "let",      LET;
        "in",       IN;
        "not",      NOT;
      ] ;
    fun s ->
      try  Hashtbl.find h s
      with Not_found -> IDENT(s)

}

let digit = ['0'-'9']
let alpha = ['a'-'z' 'A'-'Z']
let ident = (alpha | '_') (alpha | '_' | '\'' | digit)*

rule token = parse
  | '#'[^ '\n']*'\n'
      { new_line lexbuf;token lexbuf }
  | [' ' '\t' '\r' ]+
      { token lexbuf }
  | '\n'
      { new_line lexbuf; token lexbuf}
  | ident
      { id_or_keyword (lexeme lexbuf) }
  | digit+
      { LITINT (int_of_string (lexeme lexbuf)) }
  | "\""
      { DCOTE }
  | "("
      { BEGIN }
  | ")"
      { END }
  | "{"
      { FB }
  | "}"
      { FE }
  | "["
      { BB }
  | "]"
      { EB }
  | ","
      { COMMA }
  | ";"
      { SEMI }
  | "<-"
      { AFF }
  | eof
      { EOF }
  | _
      {raise (Error (sprintf "Unknow Token %s" (lexeme lexbuf)))}
