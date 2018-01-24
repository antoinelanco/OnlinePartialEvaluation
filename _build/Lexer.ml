# 1 "Lexer.mll"
 

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


# 44 "Lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base = 
   "\000\000\244\255\245\255\246\255\247\255\248\255\249\255\250\255\
    \251\255\252\255\012\000\084\000\005\000";
  Lexing.lex_backtrk = 
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\002\000\001\000\000\000";
  Lexing.lex_default = 
   "\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\255\255\255\255\255\255";
  Lexing.lex_trans = 
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\012\000\012\000\000\000\000\000\012\000\012\000\012\000\
    \000\000\000\000\012\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \012\000\000\000\009\000\000\000\000\000\012\000\000\000\000\000\
    \008\000\007\000\000\000\000\000\004\000\000\000\000\000\000\000\
    \010\000\010\000\010\000\010\000\010\000\010\000\010\000\010\000\
    \010\000\010\000\000\000\003\000\010\000\010\000\010\000\010\000\
    \010\000\010\000\010\000\010\000\010\000\010\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\006\000\000\000\005\000\000\000\011\000\
    \000\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\011\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\000\000\
    \000\000\000\000\000\000\011\000\000\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000";
  Lexing.lex_check = 
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\255\255\255\255\000\000\012\000\012\000\
    \255\255\255\255\012\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\000\000\255\255\255\255\012\000\255\255\255\255\
    \000\000\000\000\255\255\255\255\000\000\255\255\255\255\255\255\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\255\255\000\000\010\000\010\000\010\000\010\000\
    \010\000\010\000\010\000\010\000\010\000\010\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\000\000\255\255\000\000\255\255\000\000\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\011\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\011\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\255\255\
    \255\255\255\255\255\255\011\000\255\255\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255";
  Lexing.lex_base_code = 
   "";
  Lexing.lex_backtrk_code = 
   "";
  Lexing.lex_default_code = 
   "";
  Lexing.lex_trans_code = 
   "";
  Lexing.lex_check_code = 
   "";
  Lexing.lex_code = 
   "";
}

let rec token lexbuf =
    __ocaml_lex_token_rec lexbuf 0
and __ocaml_lex_token_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 49 "Lexer.mll"
      ( token lexbuf )
# 164 "Lexer.ml"

  | 1 ->
# 51 "Lexer.mll"
      ( id_or_keyword (lexeme lexbuf) )
# 169 "Lexer.ml"

  | 2 ->
# 53 "Lexer.mll"
      ( LITINT (int_of_string (lexeme lexbuf)) )
# 174 "Lexer.ml"

  | 3 ->
# 55 "Lexer.mll"
      ( DCOTE )
# 179 "Lexer.ml"

  | 4 ->
# 57 "Lexer.mll"
      ( BEGIN )
# 184 "Lexer.ml"

  | 5 ->
# 59 "Lexer.mll"
      ( END )
# 189 "Lexer.ml"

  | 6 ->
# 61 "Lexer.mll"
      ( BB )
# 194 "Lexer.ml"

  | 7 ->
# 63 "Lexer.mll"
      ( EB )
# 199 "Lexer.ml"

  | 8 ->
# 65 "Lexer.mll"
      ( COMMA )
# 204 "Lexer.ml"

  | 9 ->
# 67 "Lexer.mll"
      ( SEMI )
# 209 "Lexer.ml"

  | 10 ->
# 69 "Lexer.mll"
      ( EOF )
# 214 "Lexer.ml"

  | 11 ->
# 71 "Lexer.mll"
      (raise (Error (sprintf "Unknow Token %s" (lexeme lexbuf))))
# 219 "Lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf; 
      __ocaml_lex_token_rec lexbuf __ocaml_lex_state

;;

