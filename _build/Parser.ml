
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
    | LET
    | LENGTH
    | ISPAIR
    | IN
    | IF
    | IDENT of (
# 7 "Parser.mly"
       (string)
# 30 "Parser.ml"
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
    | AFF
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
  | MenhirState121
  | MenhirState117
  | MenhirState113
  | MenhirState109
  | MenhirState104
  | MenhirState102
  | MenhirState101
  | MenhirState96
  | MenhirState93
  | MenhirState89
  | MenhirState85
  | MenhirState78
  | MenhirState74
  | MenhirState70
  | MenhirState67
  | MenhirState60
  | MenhirState57
  | MenhirState52
  | MenhirState47
  | MenhirState45
  | MenhirState44
  | MenhirState37
  | MenhirState34
  | MenhirState30
  | MenhirState28
  | MenhirState24
  | MenhirState19
  | MenhirState14
  | MenhirState10
  | MenhirState5
  | MenhirState3
  | MenhirState0

# 1 "Parser.mly"
  

  open SourceAst


# 109 "Parser.ml"

let rec _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState52 ->
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
# 132 "Parser.ml"
              
            in
            
# 63 "Parser.mly"
                                                 ( Prim(bin,es) )
# 138 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState30 ->
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
# 159 "Parser.ml"
            ))), _, (xs0 : (SourceAst.expr list))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (SourceAst.expr) = let es =
              let xs = xs0 in
              
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 168 "Parser.ml"
              
            in
            
# 62 "Parser.mly"
                                                       ( Apply(id,es) )
# 174 "Parser.ml"
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
    | MenhirState101 ->
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
                    _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | AND ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | BB ->
                    _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | BEGIN ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | DCOTE ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | DIV ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | EQ ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | EXCEP ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | EXISTS ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | FALSE ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | FIND ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | FST ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | HD ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | IDENT _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
                | IF ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | ISPAIR ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | LENGTH ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | LET ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | LITINT _v ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
                | MULT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | OR ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | REV ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | SND ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | SUB ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | SWITCH ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | TL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | TRUE ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109)
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
    | MenhirState113 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (SourceAst.case))), _, (xs : (SourceAst.case list))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.case list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 283 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_case_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run102 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DCOTE ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState102
    | FALSE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState102
    | LITINT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
    | TRUE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState102
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102

and _menhir_goto_separated_nonempty_list_SEMI_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (SourceAst.expr list)) = _v in
        let _v : (SourceAst.expr list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 318 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_expr__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (SourceAst.expr list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.expr list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 330 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState30 | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (SourceAst.expr list)) = _v in
        let _v : (SourceAst.expr list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 346 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (SourceAst.expr list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.expr list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 358 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (SourceAst.expr list) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 369 "Parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState30 | MenhirState57 | MenhirState52 ->
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
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | AND ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | BB ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | DCOTE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | DIV ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | EQ ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | EXCEP ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | EXISTS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | FALSE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | FIND ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | FST ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | HD ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | IDENT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | ISPAIR ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | LENGTH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | LET ->
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
        | EB | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
            let _v : (SourceAst.expr list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 451 "Parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState47 ->
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
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | AND ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | BB ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | DCOTE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | DIV ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | EQ ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | EXCEP ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | EXISTS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | FALSE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | FIND ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | FST ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | HD ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | IDENT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | ISPAIR ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | LENGTH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState60 ->
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
# 551 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState67 | MenhirState45 ->
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
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | AND ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | BB ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | DCOTE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | DIV ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | EQ ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | EXCEP ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | EXISTS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | FALSE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | FIND ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | FST ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | HD ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | IDENT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | ISPAIR ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LENGTH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LET ->
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
        | EB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
            let _v : (SourceAst.expr list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 634 "Parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMI_expr_ _menhir_env _menhir_stack _menhir_s _v
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
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | AND ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | BB ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | DCOTE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | DIV ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | EQ ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | EXCEP ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | EXISTS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | FALSE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | FIND ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | FST ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | HD ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | IDENT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | ISPAIR ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | LENGTH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState70 ->
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
# 733 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState37 ->
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
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | AND ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | BB ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | DCOTE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | DIV ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | EQ ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | EXCEP ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | EXISTS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | FALSE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | FIND ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | FST ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | HD ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | IDENT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | ISPAIR ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | LENGTH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState74 ->
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
# 833 "Parser.ml"
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
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | AND ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | BB ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | DCOTE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | DIV ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | EQ ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | EXCEP ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | EXISTS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | FALSE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | FIND ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | FST ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | HD ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | IDENT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | ISPAIR ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LENGTH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState78 ->
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
# 933 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState28 ->
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
                    _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | AND ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | BB ->
                    _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | BEGIN ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | DCOTE ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | DIV ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | EQ ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | EXCEP ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | EXISTS ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | FALSE ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | FIND ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | FST ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | HD ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | IDENT _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | IF ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | ISPAIR ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | LENGTH ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | LET ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | LITINT _v ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | MULT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | OR ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | REV ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | SND ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | SUB ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | SWITCH ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | TL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | TRUE ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85)
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
    | MenhirState85 ->
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
                        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | AND ->
                        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | BB ->
                        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | BEGIN ->
                        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | DCOTE ->
                        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | DIV ->
                        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | EQ ->
                        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | EXCEP ->
                        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | EXISTS ->
                        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | FALSE ->
                        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | FIND ->
                        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | FST ->
                        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | HD ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | IDENT _v ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
                    | IF ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | ISPAIR ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | LENGTH ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | LET ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | LITINT _v ->
                        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
                    | MULT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | OR ->
                        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | REV ->
                        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | SND ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | SUB ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | SWITCH ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | TL ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | TRUE ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89)
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
    | MenhirState89 ->
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
# 1144 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ADD ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | AND ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | BB ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | DCOTE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | DIV ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | EQ ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | EXCEP ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | EXISTS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | FALSE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | FIND ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | FST ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | HD ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | IDENT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | ISPAIR ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | LENGTH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), (id : (
# 7 "Parser.mly"
       (string)
# 1233 "Parser.ml"
        ))), _, (e1 : (SourceAst.expr))), _, (e2 : (SourceAst.expr))) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : (SourceAst.expr) = 
# 72 "Parser.mly"
                                          ( Let(Var(id),e1,e2) )
# 1241 "Parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
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
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | AND ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | BB ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | DCOTE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | DIV ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | EQ ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | EXCEP ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | EXISTS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | FALSE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | FIND ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | FST ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | HD ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | IDENT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | ISPAIR ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | LENGTH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState96 ->
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
# 1335 "Parser.ml"
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
                    _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState101
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101)
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
    | MenhirState104 ->
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
# 75 "Parser.mly"
                                      ( (v1,e2) )
# 1393 "Parser.ml"
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
                    _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113)
            | EB ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (x : (SourceAst.case))) = _menhir_stack in
                let _v : (SourceAst.case list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 1417 "Parser.ml"
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
    | MenhirState109 ->
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
# 1452 "Parser.ml"
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
# 1473 "Parser.ml"
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
# 1485 "Parser.ml"
              
            in
            
# 50 "Parser.mly"
((fname, (para, e)))
# 1491 "Parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FUN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | ADD | AND | BB | BEGIN | DCOTE | DIV | EQ | EXCEP | EXISTS | FALSE | FIND | FST | HD | IDENT _ | IF | ISPAIR | LENGTH | LET | LITINT _ | MULT | OR | REV | SND | SUB | SWITCH | TL | TRUE ->
                _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState117 ->
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
# 27 "Parser.mly"
      (SourceAst.prog)
# 1525 "Parser.ml"
            ) = 
# 33 "Parser.mly"
                       ( (f, e) )
# 1529 "Parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (
# 27 "Parser.mly"
      (SourceAst.prog)
# 1536 "Parser.ml"
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
    | MenhirState117 | MenhirState10 | MenhirState109 | MenhirState104 | MenhirState14 | MenhirState96 | MenhirState19 | MenhirState93 | MenhirState24 | MenhirState89 | MenhirState85 | MenhirState28 | MenhirState30 | MenhirState78 | MenhirState34 | MenhirState74 | MenhirState37 | MenhirState70 | MenhirState44 | MenhirState67 | MenhirState45 | MenhirState60 | MenhirState57 | MenhirState52 | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (v : (SourceAst.vall))) = _menhir_stack in
        let _v : (SourceAst.expr) = 
# 60 "Parser.mly"
         ( Const(v) )
# 1559 "Parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState102 ->
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
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | AND ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | BB ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | DCOTE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | DIV ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | EQ ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | EXCEP ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | EXISTS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | FALSE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | FIND ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | FST ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | HD ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | IDENT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | ISPAIR ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | LENGTH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104)
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
# 1658 "Parser.ml"
          
        in
        
# 68 "Parser.mly"
                                      ( Tab(t) )
# 1664 "Parser.ml"
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
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | AND ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | BB ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | DCOTE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | EQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | EXCEP ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | EXISTS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | FALSE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | FIND ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | FST ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | HD ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | IDENT _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | IF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | ISPAIR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | LENGTH ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | LITINT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | EB ->
            _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52)
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
# 1766 "Parser.ml"
     in
    _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 83 "Parser.mly"
         ( TL )
# 1778 "Parser.ml"
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
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | AND ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | BB ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | DCOTE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | EQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | EXCEP ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | EXISTS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FALSE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FIND ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FST ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | HD ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | IDENT _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | IF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | ISPAIR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LENGTH ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LET ->
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
# 81 "Parser.mly"
         ( Sub )
# 1866 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 87 "Parser.mly"
         ( Snd )
# 1878 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 85 "Parser.mly"
         ( REV )
# 1890 "Parser.ml"
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
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | AND ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | BB ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | DCOTE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | EQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | EXCEP ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | EXISTS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | FALSE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | FIND ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | FST ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | HD ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | IDENT _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | IF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | ISPAIR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LENGTH ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LET ->
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
# 78 "Parser.mly"
         ( Mult )
# 1978 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "Parser.mly"
       (int)
# 1985 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 10 "Parser.mly"
       (int)
# 1993 "Parser.ml"
    )) = _v in
    let _v : (SourceAst.vall) = 
# 53 "Parser.mly"
                                      ( IVal(i) )
# 1998 "Parser.ml"
     in
    _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
        | AFF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ADD ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | AND ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | BB ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | DCOTE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | DIV ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | EQ ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | EXCEP ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | EXISTS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | FALSE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | FIND ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | FST ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | HD ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | IDENT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | ISPAIR ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | LENGTH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24)
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

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 88 "Parser.mly"
         ( Length )
# 2098 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 89 "Parser.mly"
         ( IsPair )
# 2110 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | AND ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | BB ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | DCOTE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | EQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | EXCEP ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | EXISTS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | FALSE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | FIND ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | FST ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | HD ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | IDENT _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | IF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | ISPAIR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LENGTH ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LITINT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "Parser.mly"
       (string)
# 2193 "Parser.ml"
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
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | AND ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | BB ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | DCOTE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | EQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | EXCEP ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | EXISTS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | FALSE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | FIND ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | FST ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | HD ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | IDENT _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | IF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | ISPAIR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LENGTH ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LITINT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | END ->
            _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30)
    | COMMA | EB | END | EOF | FE | IN | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (id : (
# 7 "Parser.mly"
       (string)
# 2270 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (SourceAst.expr) = 
# 61 "Parser.mly"
           ( Var(id) )
# 2275 "Parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 84 "Parser.mly"
         ( HD )
# 2293 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 86 "Parser.mly"
         ( Fst )
# 2305 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

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
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | AND ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | BB ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | DCOTE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | EQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | EXCEP ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | EXISTS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | FALSE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | FIND ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | FST ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | HD ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | IDENT _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | IF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | ISPAIR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | LENGTH ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | LET ->
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
    let _v : (SourceAst.vall) = 
# 55 "Parser.mly"
                                      ( BVal(false) )
# 2393 "Parser.ml"
     in
    _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | AND ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | BB ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | DCOTE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | EQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | EXCEP ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | EXISTS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | FALSE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | FIND ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | FST ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | HD ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | IDENT _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | IF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | ISPAIR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LENGTH ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LITINT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.expr) = 
# 59 "Parser.mly"
        ( Exception )
# 2481 "Parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 82 "Parser.mly"
         ( Eq )
# 2493 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 79 "Parser.mly"
         ( Div )
# 2505 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 2528 "Parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (string) = 
# 36 "Parser.mly"
                         ( id )
# 2535 "Parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (c : (string)) = _v in
            let _v : (SourceAst.vall) = 
# 56 "Parser.mly"
                                      ( CVal(c) )
# 2543 "Parser.ml"
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

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADD ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | AND ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | BB ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | BEGIN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | DCOTE ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | DIV ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | EQ ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | EXCEP ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | EXISTS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | FALSE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | FIND ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | FST ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | HD ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | IF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | ISPAIR ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LENGTH ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LET ->
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADD ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | AND ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | BB ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | BEGIN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | DCOTE ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | DIV ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | EQ ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | EXCEP ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | EXISTS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | FALSE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | FIND ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | FST ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | HD ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | IDENT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | IF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | ISPAIR ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LENGTH ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LET ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LITINT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | MULT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | OR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | REV ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | SND ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | SUB ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | SWITCH ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | TL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | TRUE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | EB ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState45 in
        let _v : (SourceAst.expr list) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 2690 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_expr__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | AND ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | BB ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | DCOTE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | EQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | EXCEP ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | EXISTS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | FALSE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | FIND ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | FST ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | HD ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | IDENT _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | IF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | ISPAIR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | LENGTH ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | LITINT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 80 "Parser.mly"
         ( Add )
# 2782 "Parser.ml"
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
# 2796 "Parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (string list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2802 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (string list)) = _v in
        let _v : (string list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 2812 "Parser.ml"
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
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | AND ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | BB ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | DCOTE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | EQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | EXCEP ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | EXISTS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | FALSE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | FIND ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | FST ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | HD ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | IDENT _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | IF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | ISPAIR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | LENGTH ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | LITINT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117)
    | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (fs : (SourceAst.Func_Tbl.key * SourceAst.fdef))), _, (p : (SourceAst.fdef SourceAst.Func_Tbl.t))) = _menhir_stack in
        let _v : (SourceAst.fdef SourceAst.Func_Tbl.t) = 
# 42 "Parser.mly"
    (
      let (id, infos) = fs in
      Func_Tbl.add id infos p
    )
# 2895 "Parser.ml"
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
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | AND ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | BB ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | DCOTE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | DIV ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | EQ ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | EXCEP ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | EXISTS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FALSE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FIND ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FST ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | HD ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | IDENT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | IF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | ISPAIR ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LENGTH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LET ->
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
# 2992 "Parser.ml"
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
# 3015 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (string list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 3020 "Parser.ml"
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
    | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState117 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState113 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState109 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
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

and _menhir_reduce36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (SourceAst.fdef SourceAst.Func_Tbl.t) = 
# 40 "Parser.mly"
              ( Func_Tbl.empty )
# 3166 "Parser.ml"
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
# 3195 "Parser.ml"
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
# 27 "Parser.mly"
      (SourceAst.prog)
# 3230 "Parser.ml"
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
    | ADD | AND | BB | BEGIN | DCOTE | DIV | EQ | EXCEP | EXISTS | FALSE | FIND | FST | HD | IDENT _ | IF | ISPAIR | LENGTH | LET | LITINT _ | MULT | OR | REV | SND | SUB | SWITCH | TL | TRUE ->
        _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 219 "/usr/share/menhir/standard.mly"
  


# 3257 "Parser.ml"
