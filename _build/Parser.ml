
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | TRUE
    | TL
    | SWITCH
    | SUB
    | SND
    | SEMI
    | MULT
    | LITINT of (
# 10 "Parser.mly"
       (int)
# 18 "Parser.ml"
  )
    | LENGTH
    | ISPAIR
    | IF
    | IDENT of (
# 7 "Parser.mly"
       (string)
# 26 "Parser.ml"
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
  | MenhirState101
  | MenhirState97
  | MenhirState93
  | MenhirState89
  | MenhirState84
  | MenhirState82
  | MenhirState81
  | MenhirState76
  | MenhirState72
  | MenhirState65
  | MenhirState61
  | MenhirState58
  | MenhirState53
  | MenhirState47
  | MenhirState40
  | MenhirState38
  | MenhirState37
  | MenhirState31
  | MenhirState28
  | MenhirState24
  | MenhirState22
  | MenhirState14
  | MenhirState10
  | MenhirState5
  | MenhirState3
  | MenhirState0

# 1 "Parser.mly"
  

  open SourceAst


# 96 "Parser.ml"

let rec _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState53 ->
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
# 119 "Parser.ml"
              
            in
            
# 64 "Parser.mly"
                                                 ( Prim(bin,es) )
# 125 "Parser.ml"
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
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (id : (
# 7 "Parser.mly"
       (string)
# 146 "Parser.ml"
            ))), _, (xs0 : (SourceAst.expr list))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (SourceAst.expr) = let es =
              let xs = xs0 in
              
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 155 "Parser.ml"
              
            in
            
# 63 "Parser.mly"
                                                       ( Apply(id,es) )
# 161 "Parser.ml"
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
    | MenhirState81 ->
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
                    _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | BB ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | BEGIN ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | DCOTE ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | EQ ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | EXCEP ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | EXISTS ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | FALSE ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | FIND ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | FST ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | HD ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | IDENT _v ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
                | IF ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | ISPAIR ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | LENGTH ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | LITINT _v ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
                | MULT ->
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
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (SourceAst.case))), _, (xs : (SourceAst.case list))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.case list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 260 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_case_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run82 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BB ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | BEGIN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | DCOTE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | FALSE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | LITINT _v ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | TRUE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState24 | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (SourceAst.expr list)) = _v in
        let _v : (SourceAst.expr list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 299 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (SourceAst.expr list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.expr list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 311 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_SEMI_vall_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.vall list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (SourceAst.vall list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (SourceAst.vall))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.vall list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 329 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_vall_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (SourceAst.vall list)) = _v in
        let _v : (SourceAst.vall list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 339 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_vall__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (SourceAst.expr list) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 350 "Parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState24 | MenhirState58 | MenhirState53 ->
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
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | BB ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | BEGIN ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | DCOTE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | EQ ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | EXCEP ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | EXISTS ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | FALSE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | FIND ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | FST ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | HD ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | IDENT _v ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | IF ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | ISPAIR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | LENGTH ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | LITINT _v ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | MULT ->
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
        | EB | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
            let _v : (SourceAst.expr list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 422 "Parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
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
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | BB ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | BEGIN ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | DCOTE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | EQ ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | EXCEP ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | EXISTS ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | FALSE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | FIND ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | FST ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | HD ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | IDENT _v ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | IF ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | ISPAIR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | LENGTH ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | LITINT _v ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | MULT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState61 ->
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
                                              ( Exists(e1,e2) )
# 512 "Parser.ml"
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
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ADD ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | BB ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | BEGIN ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | DCOTE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | EQ ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | EXCEP ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | EXISTS ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | FALSE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | FIND ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | FST ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | HD ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | IDENT _v ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
            | IF ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | ISPAIR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | LENGTH ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | LITINT _v ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
            | MULT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState65 ->
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
# 67 "Parser.mly"
                                            ( Find(e1,e2) )
# 602 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState22 ->
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
                    _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | BB ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | BEGIN ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | DCOTE ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | EQ ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | EXCEP ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | EXISTS ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | FALSE ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | FIND ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | FST ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | HD ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | IDENT _v ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
                | IF ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | ISPAIR ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | LENGTH ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | LITINT _v ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
                | MULT ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | SND ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | SUB ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | SWITCH ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | TL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | TRUE ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72)
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
    | MenhirState72 ->
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
                        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | BB ->
                        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | BEGIN ->
                        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | DCOTE ->
                        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | EQ ->
                        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | EXCEP ->
                        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | EXISTS ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | FALSE ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | FIND ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | FST ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | HD ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | IDENT _v ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
                    | IF ->
                        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | ISPAIR ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | LENGTH ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | LITINT _v ->
                        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
                    | MULT ->
                        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | SND ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | SUB ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | SWITCH ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | TL ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | TRUE ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76)
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
    | MenhirState76 ->
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
# 65 "Parser.mly"
                                                                  ( If(e1,e2,e3) )
# 793 "Parser.ml"
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
                    _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81)
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
    | MenhirState84 ->
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
# 851 "Parser.ml"
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
                    _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93)
            | EB ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (x : (SourceAst.case))) = _menhir_stack in
                let _v : (SourceAst.case list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 875 "Parser.ml"
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
    | MenhirState89 ->
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
# 68 "Parser.mly"
                                                                                                   ( Switch (e1,es,e2) )
# 910 "Parser.ml"
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
# 931 "Parser.ml"
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
# 943 "Parser.ml"
              
            in
            
# 49 "Parser.mly"
((fname, (para, e)))
# 949 "Parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FUN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | ADD | BB | BEGIN | DCOTE | EQ | EXCEP | EXISTS | FALSE | FIND | FST | HD | IDENT _ | IF | ISPAIR | LENGTH | LITINT _ | MULT | SND | SUB | SWITCH | TL | TRUE ->
                _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState101
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
    | MenhirState97 ->
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
# 983 "Parser.ml"
            ) = 
# 36 "Parser.mly"
( (f, e) )
# 987 "Parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (
# 25 "Parser.mly"
      (SourceAst.prog)
# 994 "Parser.ml"
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
    | MenhirState40 | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BB ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | BEGIN ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | DCOTE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | FALSE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | LITINT _v ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40)
        | EB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (SourceAst.vall))) = _menhir_stack in
            let _v : (SourceAst.vall list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 1042 "Parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMI_vall_ _menhir_env _menhir_stack _menhir_s _v
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
            | BB ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | BEGIN ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | DCOTE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | FALSE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | LITINT _v ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
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
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (e1 : (SourceAst.vall))), _, (e2 : (SourceAst.vall))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (SourceAst.vall) = 
# 57 "Parser.mly"
                                      ( PVal(e1,e2) )
# 1099 "Parser.ml"
             in
            _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState97 | MenhirState10 | MenhirState89 | MenhirState84 | MenhirState14 | MenhirState76 | MenhirState72 | MenhirState22 | MenhirState24 | MenhirState65 | MenhirState28 | MenhirState61 | MenhirState58 | MenhirState53 | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (v : (SourceAst.vall))) = _menhir_stack in
        let _v : (SourceAst.expr) = 
# 61 "Parser.mly"
         ( Const(v) )
# 1115 "Parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState82 ->
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
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | BB ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | BEGIN ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | DCOTE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | EQ ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | EXCEP ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | EXISTS ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | FALSE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | FIND ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | FST ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | HD ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | IDENT _v ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
            | IF ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | ISPAIR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | LENGTH ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | LITINT _v ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
            | MULT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_SEMI_vall__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.vall list) -> 'ttv_return =
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
        let ((_menhir_stack, _menhir_s), _, (xs0 : (SourceAst.vall list))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (SourceAst.vall) = let t =
          let xs = xs0 in
          
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 1204 "Parser.ml"
          
        in
        
# 56 "Parser.mly"
                                      ( TVal(t) )
# 1210 "Parser.ml"
         in
        _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v
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
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | BB ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | BEGIN ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | DCOTE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | EQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | EXCEP ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | EXISTS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | FALSE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | FIND ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | FST ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | HD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | IDENT _v ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
        | IF ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | ISPAIR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | LENGTH ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | LITINT _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
        | MULT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | EB ->
            _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53)
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
# 1302 "Parser.ml"
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
# 1314 "Parser.ml"
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
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | BB ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | BEGIN ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | DCOTE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | EQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | EXCEP ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | EXISTS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FALSE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FIND ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FST ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | HD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | IDENT _v ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | IF ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | ISPAIR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LENGTH ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LITINT _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | MULT ->
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
# 1392 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 81 "Parser.mly"
         ( Snd )
# 1404 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 74 "Parser.mly"
         ( Mult )
# 1416 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "Parser.mly"
       (int)
# 1423 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 10 "Parser.mly"
       (int)
# 1431 "Parser.ml"
    )) = _v in
    let _v : (SourceAst.vall) = 
# 52 "Parser.mly"
                                      ( IVal(i) )
# 1436 "Parser.ml"
     in
    _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 82 "Parser.mly"
         ( Length )
# 1448 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 83 "Parser.mly"
         ( IsPair )
# 1460 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | BB ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | BEGIN ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | DCOTE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | EQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | EXCEP ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | EXISTS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | FALSE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | FIND ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | FST ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | HD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | IDENT _v ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
        | IF ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | ISPAIR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | LENGTH ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | LITINT _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
        | MULT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "Parser.mly"
       (string)
# 1533 "Parser.ml"
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
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | BB ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | BEGIN ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | DCOTE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | EQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | EXCEP ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | EXISTS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | FALSE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | FIND ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | FST ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | HD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | IDENT _v ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
        | IF ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | ISPAIR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | LENGTH ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | LITINT _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
        | MULT ->
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
        | END ->
            _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24)
    | COMMA | EB | END | EOF | FE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (id : (
# 7 "Parser.mly"
       (string)
# 1600 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (SourceAst.expr) = 
# 62 "Parser.mly"
           ( Var(id) )
# 1605 "Parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 79 "Parser.mly"
         ( HD )
# 1623 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 80 "Parser.mly"
         ( Fst )
# 1635 "Parser.ml"
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
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | BB ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | BEGIN ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | DCOTE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | EQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | EXCEP ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | EXISTS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | FALSE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | FIND ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | FST ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | HD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | IDENT _v ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | IF ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | ISPAIR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LENGTH ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LITINT _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | MULT ->
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

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.vall) = 
# 54 "Parser.mly"
                                      ( BVal(false) )
# 1713 "Parser.ml"
     in
    _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v

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
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | BB ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | BEGIN ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | DCOTE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | EQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | EXCEP ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | EXISTS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | FALSE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | FIND ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | FST ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | HD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | IDENT _v ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | IF ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | ISPAIR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LENGTH ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LITINT _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | MULT ->
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
    let _v : (SourceAst.expr) = 
# 60 "Parser.mly"
        ( Exception )
# 1791 "Parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 77 "Parser.mly"
         ( Eq )
# 1803 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 1826 "Parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (string) = 
# 31 "Parser.mly"
                         ( id )
# 1833 "Parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (c : (string)) = _v in
            let _v : (SourceAst.vall) = 
# 55 "Parser.mly"
                                      ( CVal(c) )
# 1841 "Parser.ml"
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

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BB ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | BEGIN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | DCOTE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | FALSE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LITINT _v ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | TRUE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BB ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | BEGIN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | DCOTE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | FALSE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | LITINT _v ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | TRUE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | EB ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState38 in
        let _v : (SourceAst.vall list) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 1904 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_vall__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run50 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 75 "Parser.mly"
         ( Add )
# 1920 "Parser.ml"
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
# 1934 "Parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (string list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 1940 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (string list)) = _v in
        let _v : (string list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 1950 "Parser.ml"
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
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | BB ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | BEGIN ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | DCOTE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | EQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | EXCEP ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | EXISTS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | FALSE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | FIND ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | FST ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | HD ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | IDENT _v ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | IF ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | ISPAIR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | LENGTH ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | LITINT _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | MULT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97)
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (fs : (SourceAst.Func_Tbl.key * SourceAst.fdef))), _, (p : (SourceAst.fdef SourceAst.Func_Tbl.t))) = _menhir_stack in
        let _v : (SourceAst.fdef SourceAst.Func_Tbl.t) = 
# 41 "Parser.mly"
    (
      let (id, infos) = fs in
      Func_Tbl.add id infos p
    )
# 2023 "Parser.ml"
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
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | BB ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | BEGIN ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | DCOTE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | EQ ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | EXCEP ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | EXISTS ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FALSE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FIND ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FST ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | HD ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | IDENT _v ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | IF ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | ISPAIR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LENGTH ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LITINT _v ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | MULT ->
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
# 2110 "Parser.ml"
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
# 2133 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (string list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 2138 "Parser.ml"
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
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState97 ->
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
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState22 ->
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

and _menhir_reduce29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (SourceAst.fdef SourceAst.Func_Tbl.t) = 
# 39 "Parser.mly"
              ( Func_Tbl.empty )
# 2260 "Parser.ml"
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
# 2289 "Parser.ml"
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
# 2324 "Parser.ml"
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
    | ADD | BB | BEGIN | DCOTE | EQ | EXCEP | EXISTS | FALSE | FIND | FST | HD | IDENT _ | IF | ISPAIR | LENGTH | LITINT _ | MULT | SND | SUB | SWITCH | TL | TRUE ->
        _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 219 "/usr/share/menhir/standard.mly"
  


# 2351 "Parser.ml"
