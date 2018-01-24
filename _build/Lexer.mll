{

  open Lexing
  open Parser
  open Printf

  exception Error of string

  let id_or_keyword =
    let h = Hashtbl.create 30 in
    List.iter (fun (s, k) -> Hashtbl.add h s k)
      [ "if",       IF;
        "prim",     PRIM;
        "apply",    APPLAY;
        "equal",    EQ;
        "var",      VAR;
        "const",    CONST;
        "ival",     IVAL;
        "bval",     BVAL;
        "cval",     CVAL;
        "tval",     TVAL;
        "exists",   EXISTS;
        "find",     FIND;
        "pval",     PVAL;
        "fst",      FST;
        "snd",      SND;
        "iseven",   ISEVEN;
        "tl",       TL;
        "hd",       HD;
        "length",   LENGTH;
        "add",      ADD;
        "mul",      MULT;
        "sub",      SUB;
        "true",     TRUE;
        "false",    FALSE;
        "exception",EXCEP;
      ] ;
    fun s ->
      try  Hashtbl.find h s
      with Not_found -> IDENT(s)

}

let digit = ['0'-'9']
let alpha = ['a'-'z' 'A'-'Z']
let ident = ['a'-'z' '_'] (alpha | '_' | '\'' | digit)*

rule token = parse
  | [' ' '\t' '\r' '\n']+
      { token lexbuf }
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
  | "["
      { BB }
  | "]"
      { EB }
  | ","
      { COMMA }
  | ";"
      { SEMI }
  | eof
      { EOF }
  | _
      {raise (Error (sprintf "Unknow Token %s" (lexeme lexbuf)))}
