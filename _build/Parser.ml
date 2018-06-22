
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | TRUE
    | TL
    | SWITCH
    | SUB
    | SND
    | SEMI
    | REV
    | OR
    | MULT
    | LITINT of (
# 10 "Parser.mly"
       (int)
# 20 "Parser.ml"
  )
    | LENGTH
    | ISPAIR
    | IF
    | IDENT of (
# 7 "Parser.mly"
       (string)
# 28 "Parser.ml"
  )
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
    | ADD
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState115
  | MenhirState111
  | MenhirState107
  | MenhirState103
  | MenhirState98
  | MenhirState96
  | MenhirState95
  | MenhirState90
  | MenhirState86
  | MenhirState82
  | MenhirState75
  | MenhirState71
  | MenhirState67
  | MenhirState64
  | MenhirState57
  | MenhirState54
  | MenhirState49
  | MenhirState44
  | MenhirState42
  | MenhirState41
  | MenhirState34
  | MenhirState31
  | MenhirState27
  | MenhirState25
  | MenhirState19
  | MenhirState14
  | MenhirState10
  | MenhirState5
  | MenhirState3
  | MenhirState0

# 1 "Parser.mly"
  

  open SourceAst


# 104 "Parser.ml"

let rec _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (bin : (SourceAst.op))), _, (xs0 : (SourceAst.expr list))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (SourceAst.expr) = let es =
              let xs = xs0 in
              
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 127 "Parser.ml"
              
            in
            
# 63 "Parser.mly"
                                                 ( Prim(bin,es) )
# 133 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (id : (
# 7 "Parser.mly"
       (string)
# 154 "Parser.ml"
            ))), _, (xs0 : (SourceAst.expr list))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (SourceAst.expr) = let es =
              let xs = xs0 in
              
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 163 "Parser.ml"
              
            in
            
# 62 "Parser.mly"
                                                       ( Apply(id,es) )
# 169 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_SEMI_case_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.case list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ADD ->
                    _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | AND ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | BB ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | BEGIN ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | DCOTE ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | DIV ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | EQ ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | EXCEP ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | EXISTS ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | FALSE ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | FIND ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | FST ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | HD ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | IDENT _v ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
                | IF ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | ISPAIR ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | LENGTH ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | LITINT _v ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
                | MULT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | OR ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | REV ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | SND ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | SUB ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | SWITCH ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | TL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | TRUE ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (SourceAst.case))), _, (xs : (SourceAst.case list))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.case list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 276 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_case_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run96 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DCOTE ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | FALSE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | LITINT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | TRUE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96

and _menhir_goto_separated_nonempty_list_SEMI_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (SourceAst.expr list)) = _v in
        let _v : (SourceAst.expr list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 311 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_expr__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (SourceAst.expr list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.expr list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 323 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState27 | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (SourceAst.expr list)) = _v in
        let _v : (SourceAst.expr list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 339 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (SourceAst.expr list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.expr list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 351 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (SourceAst.expr list) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 362 "Parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState27 | MenhirState54 | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ADD ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | AND ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | BB ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | BEGIN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | DCOTE ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | DIV ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | EQ ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | EXCEP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | EXISTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | FALSE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | FIND ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | FST ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | HD ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
            | IF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | ISPAIR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | LENGTH ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54)
        | EB | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
            let _v : (SourceAst.expr list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 442 "Parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ADD ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | AND ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | BB ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | BEGIN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | DCOTE ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | DIV ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | EQ ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | EXCEP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | EXISTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | FALSE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | FIND ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | FST ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | HD ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | IF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | ISPAIR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | LENGTH ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (e1 : (SourceAst.expr))), _, (e2 : (SourceAst.expr))) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (SourceAst.expr) = 
# 71 "Parser.mly"
                                       ( AND(e1,e2) )
# 540 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState64 | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ADD ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | AND ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | BB ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | BEGIN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | DCOTE ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | DIV ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | EQ ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | EXCEP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | EXISTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | FALSE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | FIND ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | FST ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | HD ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | IF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | ISPAIR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | LENGTH ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64)
        | EB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
            let _v : (SourceAst.expr list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 621 "Parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMI_expr_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ADD ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | AND ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | BB ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | BEGIN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | DCOTE ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | DIV ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | EQ ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | EXCEP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | EXISTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | FALSE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | FIND ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | FST ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | HD ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | IF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | ISPAIR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LENGTH ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (e1 : (SourceAst.expr))), _, (e2 : (SourceAst.expr))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (SourceAst.expr) = 
# 69 "Parser.mly"
                                      ( Pair(e1,e2) )
# 718 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ADD ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | AND ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | BB ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | BEGIN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | DCOTE ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | DIV ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | EQ ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | EXCEP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | EXISTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | FALSE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | FIND ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | FST ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | HD ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | IF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | ISPAIR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LENGTH ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (e1 : (SourceAst.expr))), _, (e2 : (SourceAst.expr))) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (SourceAst.expr) = 
# 65 "Parser.mly"
                                              ( Exists(e1,e2) )
# 816 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ADD ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | AND ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | BB ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | BEGIN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | DCOTE ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | DIV ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | EQ ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | EXCEP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | EXISTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | FALSE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | FIND ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | FST ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | HD ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | IF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | ISPAIR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | LENGTH ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (e1 : (SourceAst.expr))), _, (e2 : (SourceAst.expr))) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (SourceAst.expr) = 
# 66 "Parser.mly"
                                            ( Find(e1,e2) )
# 914 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FB ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ADD ->
                    _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | AND ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | BB ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | BEGIN ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | DCOTE ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | DIV ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | EQ ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | EXCEP ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | EXISTS ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | FALSE ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | FIND ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | FST ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | HD ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | IDENT _v ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
                | IF ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | ISPAIR ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | LENGTH ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | LITINT _v ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
                | MULT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | OR ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | REV ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | SND ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | SUB ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | SWITCH ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | TL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | TRUE ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ELSE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | FB ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | ADD ->
                        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | AND ->
                        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | BB ->
                        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | BEGIN ->
                        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | DCOTE ->
                        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | DIV ->
                        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | EQ ->
                        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | EXCEP ->
                        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | EXISTS ->
                        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | FALSE ->
                        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | FIND ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | FST ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | HD ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | IDENT _v ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
                    | IF ->
                        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | ISPAIR ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | LENGTH ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | LITINT _v ->
                        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
                    | MULT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | OR ->
                        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | REV ->
                        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | SND ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | SUB ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | SWITCH ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | TL ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | TRUE ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (e1 : (SourceAst.expr))), _, (e2 : (SourceAst.expr))), _, (e3 : (SourceAst.expr))) = _menhir_stack in
            let _11 = () in
            let _9 = () in
            let _8 = () in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (SourceAst.expr) = 
# 64 "Parser.mly"
                                                                  ( If(e1,e2,e3) )
# 1121 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ADD ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | AND ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | BB ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | BEGIN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | DCOTE ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | DIV ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | EQ ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | EXCEP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | EXISTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | FALSE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | FIND ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | FST ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | HD ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | IF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | ISPAIR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | LENGTH ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (e1 : (SourceAst.expr))), _, (e2 : (SourceAst.expr))) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (SourceAst.expr) = 
# 70 "Parser.mly"
                                      ( OR(e1,e2) )
# 1219 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BB ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BEGIN ->
                    _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState95
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (v1 : (SourceAst.vall))), _, (e2 : (SourceAst.expr))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (SourceAst.case) = 
# 74 "Parser.mly"
                                      ( (v1,e2) )
# 1277 "Parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMI ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BEGIN ->
                    _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState107
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107)
            | EB ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (x : (SourceAst.case))) = _menhir_stack in
                let _v : (SourceAst.case list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 1301 "Parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_SEMI_case_ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (e1 : (SourceAst.expr))), _, (es : (SourceAst.case list))), _, (e2 : (SourceAst.expr))) = _menhir_stack in
            let _10 = () in
            let _8 = () in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (SourceAst.expr) = 
# 67 "Parser.mly"
                                                                                                   ( Switch (e1,es,e2) )
# 1336 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), (fname : (
# 7 "Parser.mly"
       (string)
# 1357 "Parser.ml"
            ))), _, (xs0 : (string list))), _, (e : (SourceAst.expr))) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (SourceAst.Func_Tbl.key * SourceAst.fdef) = let para =
              let xs = xs0 in
              
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 1369 "Parser.ml"
              
            in
            
# 50 "Parser.mly"
((fname, (para, e)))
# 1375 "Parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FUN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | ADD | AND | BB | BEGIN | DCOTE | DIV | EQ | EXCEP | EXISTS | FALSE | FIND | FST | HD | IDENT _ | IF | ISPAIR | LENGTH | LITINT _ | MULT | OR | REV | SND | SUB | SWITCH | TL | TRUE ->
                _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState111 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (f : (SourceAst.fdef SourceAst.Func_Tbl.t))), _, (e : (SourceAst.expr))) = _menhir_stack in
            let _3 = () in
            let _v : (
# 26 "Parser.mly"
      (SourceAst.prog)
# 1409 "Parser.ml"
            ) = 
# 37 "Parser.mly"
( (f, e) )
# 1413 "Parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (
# 26 "Parser.mly"
      (SourceAst.prog)
# 1420 "Parser.ml"
            )) = _v in
            Obj.magic _1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_vall : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.vall) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState111 | MenhirState10 | MenhirState103 | MenhirState98 | MenhirState14 | MenhirState90 | MenhirState19 | MenhirState86 | MenhirState82 | MenhirState25 | MenhirState27 | MenhirState75 | MenhirState31 | MenhirState71 | MenhirState34 | MenhirState67 | MenhirState41 | MenhirState64 | MenhirState42 | MenhirState57 | MenhirState54 | MenhirState49 | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (v : (SourceAst.vall))) = _menhir_stack in
        let _v : (SourceAst.expr) = 
# 60 "Parser.mly"
         ( Const(v) )
# 1443 "Parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ADD ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | AND ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | BB ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | BEGIN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | DCOTE ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | DIV ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | EQ ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | EXCEP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | EXISTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | FALSE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | FIND ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | FST ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | HD ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
            | IF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | ISPAIR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | LENGTH ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_SEMI_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EB ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (xs0 : (SourceAst.expr list))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (SourceAst.expr) = let t =
          let xs = xs0 in
          
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 1540 "Parser.ml"
          
        in
        
# 68 "Parser.mly"
                                      ( Tab(t) )
# 1546 "Parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_op : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.op) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BB ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | AND ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | BB ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | DCOTE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | DIV ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | EQ ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | EXCEP ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | EXISTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | FALSE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | FIND ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | FST ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | HD ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
        | IF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | ISPAIR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | LENGTH ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | LITINT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | EB ->
            _menhir_reduce18 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.vall) = 
# 54 "Parser.mly"
                                      ( BVal(true) )
# 1646 "Parser.ml"
     in
    _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 82 "Parser.mly"
         ( TL )
# 1658 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | AND ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | BB ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | DCOTE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | DIV ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | EQ ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | EXCEP ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | EXISTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FALSE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FIND ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FST ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | HD ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | IF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | ISPAIR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LENGTH ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LITINT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 80 "Parser.mly"
         ( Sub )
# 1744 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 86 "Parser.mly"
         ( Snd )
# 1756 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 84 "Parser.mly"
         ( REV )
# 1768 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BB ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | AND ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | BB ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | DCOTE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | DIV ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | EQ ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | EXCEP ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | EXISTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | FALSE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | FIND ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | FST ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | HD ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | IF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | ISPAIR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LENGTH ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LITINT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 77 "Parser.mly"
         ( Mult )
# 1854 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "Parser.mly"
       (int)
# 1861 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 10 "Parser.mly"
       (int)
# 1869 "Parser.ml"
    )) = _v in
    let _v : (SourceAst.vall) = 
# 53 "Parser.mly"
                                      ( IVal(i) )
# 1874 "Parser.ml"
     in
    _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 87 "Parser.mly"
         ( Length )
# 1886 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 88 "Parser.mly"
         ( IsPair )
# 1898 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | AND ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | BB ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | DCOTE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | DIV ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | EQ ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | EXCEP ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | EXISTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | FALSE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | FIND ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | FST ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | HD ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | IF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | ISPAIR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LENGTH ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LITINT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "Parser.mly"
       (string)
# 1979 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | AND ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | BB ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | DCOTE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | DIV ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | EQ ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | EXCEP ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | EXISTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | FALSE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | FIND ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | FST ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | HD ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | IF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | ISPAIR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | LENGTH ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | LITINT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | END ->
            _menhir_reduce18 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27)
    | COMMA | EB | END | EOF | FE | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (id : (
# 7 "Parser.mly"
       (string)
# 2054 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (SourceAst.expr) = 
# 61 "Parser.mly"
           ( Var(id) )
# 2059 "Parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 83 "Parser.mly"
         ( HD )
# 2077 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 85 "Parser.mly"
         ( Fst )
# 2089 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | AND ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | BB ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | DCOTE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | DIV ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | EQ ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | EXCEP ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | EXISTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | FALSE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | FIND ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | FST ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | HD ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | IF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | ISPAIR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LENGTH ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LITINT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.vall) = 
# 55 "Parser.mly"
                                      ( BVal(false) )
# 2175 "Parser.ml"
     in
    _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | AND ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | BB ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | DCOTE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | DIV ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | EQ ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | EXCEP ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | EXISTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | FALSE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | FIND ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | FST ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | HD ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | IF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | ISPAIR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | LENGTH ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | LITINT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.expr) = 
# 59 "Parser.mly"
        ( Exception )
# 2261 "Parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 81 "Parser.mly"
         ( Eq )
# 2273 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 78 "Parser.mly"
         ( Div )
# 2285 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DCOTE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), (id : (
# 7 "Parser.mly"
       (string)
# 2308 "Parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (string) = 
# 32 "Parser.mly"
                         ( id )
# 2315 "Parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (c : (string)) = _v in
            let _v : (SourceAst.vall) = 
# 56 "Parser.mly"
                                      ( CVal(c) )
# 2323 "Parser.ml"
             in
            _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADD ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | AND ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | BB ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | BEGIN ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | DCOTE ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | DIV ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | EQ ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | EXCEP ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | EXISTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | FALSE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | FIND ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | FST ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | HD ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | IF ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | ISPAIR ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LENGTH ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LITINT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | MULT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | OR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | REV ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | SND ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | SUB ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | SWITCH ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | TL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | TRUE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADD ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | AND ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | BB ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | BEGIN ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | DCOTE ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | DIV ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | EQ ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | EXCEP ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | EXISTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | FALSE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | FIND ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | FST ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | HD ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | IF ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | ISPAIR ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LENGTH ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LITINT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | MULT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | OR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | REV ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | SND ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | SUB ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | SWITCH ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | TL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | TRUE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | EB ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState42 in
        let _v : (SourceAst.expr list) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 2466 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_expr__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BB ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | AND ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | BB ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | DCOTE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | DIV ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | EQ ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | EXCEP ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | EXISTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | FALSE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | FIND ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | FST ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | HD ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | IF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | ISPAIR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | LENGTH ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | LITINT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 79 "Parser.mly"
         ( Add )
# 2556 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_separated_nonempty_list_COMMA_IDENT_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (string list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (string list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (
# 7 "Parser.mly"
       (string)
# 2570 "Parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (string list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2576 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (string list)) = _v in
        let _v : (string list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 2586 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_IDENT__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_progs : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.fdef SourceAst.Func_Tbl.t) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | AND ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | BB ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | DCOTE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | DIV ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | EQ ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | EXCEP ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | EXISTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | FALSE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | FIND ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | FST ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | HD ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
        | IF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | ISPAIR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | LENGTH ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | LITINT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111)
    | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (fs : (SourceAst.Func_Tbl.key * SourceAst.fdef))), _, (p : (SourceAst.fdef SourceAst.Func_Tbl.t))) = _menhir_stack in
        let _v : (SourceAst.fdef SourceAst.Func_Tbl.t) = 
# 42 "Parser.mly"
    (
      let (id, infos) = fs in
      Func_Tbl.add id infos p
    )
# 2667 "Parser.ml"
         in
        _menhir_goto_progs _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_IDENT__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (string list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | END ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ADD ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | AND ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | BB ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | BEGIN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | DCOTE ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | DIV ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | EQ ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | EXCEP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | EXISTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FALSE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FIND ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FST ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | HD ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | IF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | ISPAIR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LENGTH ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "Parser.mly"
       (string)
# 2762 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5)
    | END ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (
# 7 "Parser.mly"
       (string)
# 2785 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (string list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 2790 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState111 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_reduce35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (SourceAst.fdef SourceAst.Func_Tbl.t) = 
# 40 "Parser.mly"
              ( Func_Tbl.empty )
# 2928 "Parser.ml"
     in
    _menhir_goto_progs _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENT _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
            | END ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState3 in
                let _v : (string list) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 2957 "Parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_COMMA_IDENT__ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 26 "Parser.mly"
      (SourceAst.prog)
# 2992 "Parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUN ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ADD | AND | BB | BEGIN | DCOTE | DIV | EQ | EXCEP | EXISTS | FALSE | FIND | FST | HD | IDENT _ | IF | ISPAIR | LENGTH | LITINT _ | MULT | OR | REV | SND | SUB | SWITCH | TL | TRUE ->
        _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 219 "/usr/share/menhir/standard.mly"
  


# 3019 "Parser.ml"
