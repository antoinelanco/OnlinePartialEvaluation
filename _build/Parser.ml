
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
    | MULT
    | LITINT of (
# 10 "Parser.mly"
       (int)
# 19 "Parser.ml"
  )
    | LENGTH
    | ISPAIR
    | IF
    | IDENT of (
# 7 "Parser.mly"
       (string)
# 27 "Parser.ml"
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
    | DCOTE
    | COMMA
    | BEGIN
    | BB
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
  | MenhirState102
  | MenhirState98
  | MenhirState94
  | MenhirState90
  | MenhirState85
  | MenhirState83
  | MenhirState82
  | MenhirState77
  | MenhirState73
  | MenhirState66
  | MenhirState62
  | MenhirState58
  | MenhirState55
  | MenhirState50
  | MenhirState45
  | MenhirState39
  | MenhirState38
  | MenhirState32
  | MenhirState29
  | MenhirState25
  | MenhirState23
  | MenhirState14
  | MenhirState10
  | MenhirState5
  | MenhirState3
  | MenhirState0

# 1 "Parser.mly"
  

  open SourceAst


# 97 "Parser.ml"

let rec _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState45 ->
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
# 120 "Parser.ml"
              
            in
            
# 62 "Parser.mly"
                                                 ( Prim(bin,es) )
# 126 "Parser.ml"
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (id : (
# 7 "Parser.mly"
       (string)
# 147 "Parser.ml"
            ))), _, (xs0 : (SourceAst.expr list))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (SourceAst.expr) = let es =
              let xs = xs0 in
              
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 156 "Parser.ml"
              
            in
            
# 61 "Parser.mly"
                                                       ( Apply(id,es) )
# 162 "Parser.ml"
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
    | MenhirState82 ->
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
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | BB ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | BEGIN ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | DCOTE ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | EQ ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | EXCEP ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | EXISTS ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | FALSE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | FIND ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | FST ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | HD ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | IDENT _v ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
                | IF ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | ISPAIR ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | LENGTH ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | LITINT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
                | MULT ->
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
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (SourceAst.case))), _, (xs : (SourceAst.case list))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.case list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 263 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_case_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run83 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DCOTE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | FALSE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | LITINT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | TRUE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83

and _menhir_goto_separated_nonempty_list_SEMI_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (SourceAst.expr list)) = _v in
        let _v : (SourceAst.expr list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 298 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_expr__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (SourceAst.expr list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.expr list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 310 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState25 | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (SourceAst.expr list)) = _v in
        let _v : (SourceAst.expr list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 326 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (SourceAst.expr list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.expr list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 338 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (SourceAst.expr list) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 349 "Parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState25 | MenhirState50 | MenhirState45 ->
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
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | BB ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | BEGIN ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | DCOTE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | EQ ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | EXCEP ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | EXISTS ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | FALSE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | FIND ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | FST ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | HD ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | IDENT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | IF ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | ISPAIR ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | LENGTH ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | LITINT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | MULT ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50)
        | EB | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
            let _v : (SourceAst.expr list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 423 "Parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState55 | MenhirState39 ->
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
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | BB ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | BEGIN ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | DCOTE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | EQ ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | EXCEP ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | EXISTS ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | FALSE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | FIND ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | FST ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | HD ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | IDENT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | IF ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | ISPAIR ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | LENGTH ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | LITINT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | MULT ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55)
        | EB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
            let _v : (SourceAst.expr list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 498 "Parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMI_expr_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState38 ->
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
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | BB ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | BEGIN ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | DCOTE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | EQ ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | EXCEP ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | EXISTS ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | FALSE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | FIND ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | FST ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | HD ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | IDENT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | IF ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | ISPAIR ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | LENGTH ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | LITINT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | MULT ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState58 ->
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
# 68 "Parser.mly"
                                      ( Pair(e1,e2) )
# 589 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState32 ->
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
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | BB ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | BEGIN ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | DCOTE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | EQ ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | EXCEP ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | EXISTS ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | FALSE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | FIND ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | FST ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | HD ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | IDENT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | IF ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | ISPAIR ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | LENGTH ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | LITINT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | MULT ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState62 ->
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
# 64 "Parser.mly"
                                              ( Exists(e1,e2) )
# 681 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState29 ->
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
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | BB ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | BEGIN ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | DCOTE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | EQ ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | EXCEP ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | EXISTS ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | FALSE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | FIND ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | FST ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | HD ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | IDENT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | IF ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | ISPAIR ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LENGTH ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LITINT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | MULT ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState66 ->
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
                                            ( Find(e1,e2) )
# 773 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState23 ->
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
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | BB ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | BEGIN ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | DCOTE ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | EQ ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | EXCEP ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | EXISTS ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | FALSE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | FIND ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | FST ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | HD ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | IDENT _v ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
                | IF ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | ISPAIR ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | LENGTH ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | LITINT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
                | MULT ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | REV ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | SND ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | SUB ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | SWITCH ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | TL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | TRUE ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73)
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
    | MenhirState73 ->
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
                        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | BB ->
                        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | BEGIN ->
                        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | DCOTE ->
                        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | EQ ->
                        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | EXCEP ->
                        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | EXISTS ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | FALSE ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | FIND ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | FST ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | HD ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | IDENT _v ->
                        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
                    | IF ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | ISPAIR ->
                        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | LENGTH ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | LITINT _v ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
                    | MULT ->
                        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | REV ->
                        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | SND ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | SUB ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | SWITCH ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | TL ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | TRUE ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77)
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
    | MenhirState77 ->
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
# 63 "Parser.mly"
                                                                  ( If(e1,e2,e3) )
# 968 "Parser.ml"
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
                    _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState82
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
    | MenhirState85 ->
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
# 71 "Parser.mly"
                                      ( (v1,e2) )
# 1026 "Parser.ml"
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
                    _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState94
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94)
            | EB ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (x : (SourceAst.case))) = _menhir_stack in
                let _v : (SourceAst.case list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 1050 "Parser.ml"
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
    | MenhirState90 ->
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
# 66 "Parser.mly"
                                                                                                   ( Switch (e1,es,e2) )
# 1085 "Parser.ml"
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
# 1106 "Parser.ml"
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
# 1118 "Parser.ml"
              
            in
            
# 49 "Parser.mly"
((fname, (para, e)))
# 1124 "Parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FUN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | ADD | BB | BEGIN | DCOTE | EQ | EXCEP | EXISTS | FALSE | FIND | FST | HD | IDENT _ | IF | ISPAIR | LENGTH | LITINT _ | MULT | REV | SND | SUB | SWITCH | TL | TRUE ->
                _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102)
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
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (f : (SourceAst.fdef SourceAst.Func_Tbl.t))), _, (e : (SourceAst.expr))) = _menhir_stack in
            let _3 = () in
            let _v : (
# 25 "Parser.mly"
      (SourceAst.prog)
# 1158 "Parser.ml"
            ) = 
# 36 "Parser.mly"
( (f, e) )
# 1162 "Parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (
# 25 "Parser.mly"
      (SourceAst.prog)
# 1169 "Parser.ml"
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
    | MenhirState98 | MenhirState10 | MenhirState90 | MenhirState85 | MenhirState14 | MenhirState77 | MenhirState73 | MenhirState23 | MenhirState25 | MenhirState66 | MenhirState29 | MenhirState62 | MenhirState32 | MenhirState58 | MenhirState38 | MenhirState55 | MenhirState50 | MenhirState45 | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (v : (SourceAst.vall))) = _menhir_stack in
        let _v : (SourceAst.expr) = 
# 59 "Parser.mly"
         ( Const(v) )
# 1192 "Parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState83 ->
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
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | BB ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | BEGIN ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | DCOTE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | EQ ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | EXCEP ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | EXISTS ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | FALSE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | FIND ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | FST ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | HD ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | IDENT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
            | IF ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | ISPAIR ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | LENGTH ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | LITINT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
            | MULT ->
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
# 1283 "Parser.ml"
          
        in
        
# 67 "Parser.mly"
                                      ( Tab(t) )
# 1289 "Parser.ml"
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
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | BB ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | BEGIN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | DCOTE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | EQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | EXCEP ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | EXISTS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | FALSE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | FIND ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | FST ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | HD ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | IDENT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | IF ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | ISPAIR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LENGTH ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LITINT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | MULT ->
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
            _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45)
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
# 53 "Parser.mly"
                                      ( BVal(true) )
# 1383 "Parser.ml"
     in
    _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 78 "Parser.mly"
         ( TL )
# 1395 "Parser.ml"
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
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | BB ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | BEGIN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | DCOTE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | EQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | EXCEP ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | EXISTS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FALSE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FIND ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FST ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | HD ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | IDENT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | IF ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | ISPAIR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LENGTH ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LITINT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | MULT ->
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
# 76 "Parser.mly"
         ( Sub )
# 1475 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 82 "Parser.mly"
         ( Snd )
# 1487 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 80 "Parser.mly"
         ( REV )
# 1499 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 74 "Parser.mly"
         ( Mult )
# 1511 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "Parser.mly"
       (int)
# 1518 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 10 "Parser.mly"
       (int)
# 1526 "Parser.ml"
    )) = _v in
    let _v : (SourceAst.vall) = 
# 52 "Parser.mly"
                                      ( IVal(i) )
# 1531 "Parser.ml"
     in
    _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 83 "Parser.mly"
         ( Length )
# 1543 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 84 "Parser.mly"
         ( IsPair )
# 1555 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | BB ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | BEGIN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | DCOTE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | EQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | EXCEP ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | EXISTS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | FALSE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | FIND ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | FST ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | HD ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | IDENT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | IF ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | ISPAIR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LENGTH ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LITINT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | MULT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "Parser.mly"
       (string)
# 1630 "Parser.ml"
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
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | BB ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | BEGIN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | DCOTE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | EQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | EXCEP ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | EXISTS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | FALSE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | FIND ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | FST ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | HD ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | IDENT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | IF ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | ISPAIR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LENGTH ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LITINT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | MULT ->
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
        | END ->
            _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25)
    | COMMA | EB | END | EOF | FE | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (id : (
# 7 "Parser.mly"
       (string)
# 1699 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (SourceAst.expr) = 
# 60 "Parser.mly"
           ( Var(id) )
# 1704 "Parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 79 "Parser.mly"
         ( HD )
# 1722 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 81 "Parser.mly"
         ( Fst )
# 1734 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | BB ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | BEGIN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | DCOTE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | EQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | EXCEP ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | EXISTS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | FALSE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | FIND ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | FST ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | HD ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | IDENT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
        | IF ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | ISPAIR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | LENGTH ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | LITINT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
        | MULT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.vall) = 
# 54 "Parser.mly"
                                      ( BVal(false) )
# 1814 "Parser.ml"
     in
    _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | BB ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | BEGIN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | DCOTE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | EQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | EXCEP ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | EXISTS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | FALSE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | FIND ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | FST ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | HD ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | IDENT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | IF ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | ISPAIR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LENGTH ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LITINT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | MULT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.expr) = 
# 58 "Parser.mly"
        ( Exception )
# 1894 "Parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 77 "Parser.mly"
         ( Eq )
# 1906 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 1929 "Parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (string) = 
# 31 "Parser.mly"
                         ( id )
# 1936 "Parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (c : (string)) = _v in
            let _v : (SourceAst.vall) = 
# 55 "Parser.mly"
                                      ( CVal(c) )
# 1944 "Parser.ml"
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

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADD ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | BB ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | BEGIN ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | DCOTE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | EQ ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | EXCEP ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | EXISTS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | FALSE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | FIND ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | FST ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | HD ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | IDENT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | IF ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | ISPAIR ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | LENGTH ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | LITINT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | MULT ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | REV ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | SND ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | SUB ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | SWITCH ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | TL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | TRUE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADD ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | BB ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | BEGIN ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | DCOTE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | EQ ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | EXCEP ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | EXISTS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | FALSE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | FIND ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | FST ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | HD ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | IDENT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | IF ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | ISPAIR ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | LENGTH ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | LITINT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | MULT ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | REV ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | SND ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | SUB ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | SWITCH ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | TL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | TRUE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | EB ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState39 in
        let _v : (SourceAst.expr list) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 2075 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_expr__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 75 "Parser.mly"
         ( Add )
# 2091 "Parser.ml"
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
# 2105 "Parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (string list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2111 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (string list)) = _v in
        let _v : (string list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 2121 "Parser.ml"
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
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | BB ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | BEGIN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | DCOTE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | EQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | EXCEP ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | EXISTS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | FALSE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | FIND ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | FST ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | HD ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | IDENT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | IF ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | ISPAIR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | LENGTH ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | LITINT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | MULT ->
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
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (fs : (SourceAst.Func_Tbl.key * SourceAst.fdef))), _, (p : (SourceAst.fdef SourceAst.Func_Tbl.t))) = _menhir_stack in
        let _v : (SourceAst.fdef SourceAst.Func_Tbl.t) = 
# 41 "Parser.mly"
    (
      let (id, infos) = fs in
      Func_Tbl.add id infos p
    )
# 2196 "Parser.ml"
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
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | BB ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | BEGIN ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | DCOTE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | EQ ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | EXCEP ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | EXISTS ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FALSE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FIND ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FST ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | HD ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | IDENT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | IF ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | ISPAIR ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LENGTH ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LITINT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | MULT ->
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
# 2285 "Parser.ml"
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
# 2308 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (string list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 2313 "Parser.ml"
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
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState23 ->
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

and _menhir_reduce32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (SourceAst.fdef SourceAst.Func_Tbl.t) = 
# 39 "Parser.mly"
              ( Func_Tbl.empty )
# 2435 "Parser.ml"
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
# 2464 "Parser.ml"
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
# 25 "Parser.mly"
      (SourceAst.prog)
# 2499 "Parser.ml"
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
    | ADD | BB | BEGIN | DCOTE | EQ | EXCEP | EXISTS | FALSE | FIND | FST | HD | IDENT _ | IF | ISPAIR | LENGTH | LITINT _ | MULT | REV | SND | SUB | SWITCH | TL | TRUE ->
        _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 219 "/usr/share/menhir/standard.mly"
  


# 2526 "Parser.ml"
