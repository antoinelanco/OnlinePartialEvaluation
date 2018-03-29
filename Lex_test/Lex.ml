  open Lexing
  open Parser
  exception Error of string

let __ocaml_lex_init_lexbuf lexbuf mem_size =
  let pos = lexbuf.Lexing.lex_curr_pos in
  lexbuf.Lexing.lex_mem <- Array.make mem_size (-1) ;
  lexbuf.Lexing.lex_start_pos <- pos ;
  lexbuf.Lexing.lex_last_pos <- pos ;
  lexbuf.Lexing.lex_last_action <- -1

let rec __ocaml_lex_next_char lexbuf =
  if lexbuf.Lexing.lex_curr_pos >= lexbuf.Lexing.lex_buffer_len then begin
    if lexbuf.Lexing.lex_eof_reached then
      256
    else begin
      lexbuf.Lexing.refill_buff lexbuf ;
      __ocaml_lex_next_char lexbuf
    end
  end else begin
    let i = lexbuf.Lexing.lex_curr_pos in
    let c = Bytes.get lexbuf.Lexing.lex_buffer i in
    lexbuf.Lexing.lex_curr_pos <- i+1 ;
    Char.code c
  end

let rec __ocaml_lex_state0 lexbuf = match __ocaml_lex_next_char lexbuf with
  |98 -> __ocaml_lex_state2 lexbuf
  |97 -> 1
  | _ -> lexbuf.Lexing.lex_curr_pos <- lexbuf.Lexing.lex_last_pos ;
         lexbuf.Lexing.lex_last_action

and __ocaml_lex_state2 lexbuf = (* *)
  lexbuf.Lexing.lex_last_pos <- lexbuf.Lexing.lex_curr_pos ;
  lexbuf.Lexing.lex_last_action <- 0 ;
match __ocaml_lex_next_char lexbuf with
  |98 -> __ocaml_lex_state2 lexbuf
  | _ -> lexbuf.Lexing.lex_curr_pos <- lexbuf.Lexing.lex_last_pos ;
         lexbuf.Lexing.lex_last_action

let rec token lexbuf =
  __ocaml_lex_init_lexbuf lexbuf 0;
  let __ocaml_lex_result = __ocaml_lex_state0 lexbuf in
  lexbuf.Lexing.lex_start_p <- lexbuf.Lexing.lex_curr_p;
  lexbuf.Lexing.lex_curr_p <- {lexbuf.Lexing.lex_curr_p with
    Lexing.pos_cnum = lexbuf.Lexing.lex_abs_pos+lexbuf.Lexing.lex_curr_pos};
  match __ocaml_lex_result with
  | 0 -> ( B )
  | 1 -> ( A )
  | _ -> raise (Failure "lexing: empty token")
;;
