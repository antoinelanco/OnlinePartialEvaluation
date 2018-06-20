
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
  | MenhirState114
  | MenhirState110
  | MenhirState106
  | MenhirState102
  | MenhirState97
  | MenhirState95
  | MenhirState94
  | MenhirState89
  | MenhirState85
  | MenhirState81
  | MenhirState74
  | MenhirState70
  | MenhirState66
  | MenhirState63
  | MenhirState56
  | MenhirState53
  | MenhirState48
  | MenhirState43
  | MenhirState41
  | MenhirState40
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


# 103 "Parser.ml"

let rec _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState48 ->
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
# 126 "Parser.ml"
              
            in
            
# 63 "Parser.mly"
                                                 ( Prim(bin,es) )
# 132 "Parser.ml"
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
# 153 "Parser.ml"
            ))), _, (xs0 : (SourceAst.expr list))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (SourceAst.expr) = let es =
              let xs = xs0 in
              
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 162 "Parser.ml"
              
            in
            
# 62 "Parser.mly"
                                                       ( Apply(id,es) )
# 168 "Parser.ml"
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
    | MenhirState94 ->
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
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | AND ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | BB ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | BEGIN ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | DCOTE ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | EQ ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | EXCEP ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | EXISTS ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | FALSE ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | FIND ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | FST ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | HD ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | IDENT _v ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
                | IF ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | ISPAIR ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | LENGTH ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | LITINT _v ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
                | MULT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | OR ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | REV ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | SND ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | SUB ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | SWITCH ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | TL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | TRUE ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState102
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
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (SourceAst.case))), _, (xs : (SourceAst.case list))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.case list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 273 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_case_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run95 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DCOTE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | FALSE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | LITINT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | TRUE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95

and _menhir_goto_separated_nonempty_list_SEMI_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (SourceAst.expr list)) = _v in
        let _v : (SourceAst.expr list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 308 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_expr__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (SourceAst.expr list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.expr list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 320 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState27 | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (SourceAst.expr list)) = _v in
        let _v : (SourceAst.expr list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 336 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (SourceAst.expr list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.expr list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 348 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (SourceAst.expr list) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 359 "Parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState27 | MenhirState53 | MenhirState48 ->
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
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | AND ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | BB ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | BEGIN ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | DCOTE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | EQ ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | EXCEP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | EXISTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | FALSE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | FIND ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | FST ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | HD ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
            | IF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | ISPAIR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | LENGTH ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | REV ->
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
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53)
        | EB | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
            let _v : (SourceAst.expr list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 437 "Parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState43 ->
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
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | AND ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | BB ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | BEGIN ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | DCOTE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | EQ ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | EXCEP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | EXISTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | FALSE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | FIND ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | FST ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | HD ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
            | IF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | ISPAIR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | LENGTH ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState56 ->
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
# 533 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState63 | MenhirState41 ->
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
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | AND ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | BB ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | BEGIN ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | DCOTE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | EQ ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | EXCEP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | EXISTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | FALSE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | FIND ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | FST ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | HD ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
            | IF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | ISPAIR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | LENGTH ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63)
        | EB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
            let _v : (SourceAst.expr list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 612 "Parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMI_expr_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState40 ->
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
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | AND ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | BB ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | BEGIN ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | DCOTE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | EQ ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | EXCEP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | EXISTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | FALSE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | FIND ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | FST ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | HD ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | IF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | ISPAIR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LENGTH ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | OR ->
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
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (SourceAst.expr) = 
# 69 "Parser.mly"
                                      ( Pair(e1,e2) )
# 707 "Parser.ml"
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
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | AND ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | BB ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | BEGIN ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | DCOTE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | EQ ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | EXCEP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | EXISTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | FALSE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | FIND ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | FST ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | HD ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | IF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | ISPAIR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | LENGTH ->
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
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (SourceAst.expr) = 
# 65 "Parser.mly"
                                              ( Exists(e1,e2) )
# 803 "Parser.ml"
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
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | AND ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | BB ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | BEGIN ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | DCOTE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | EQ ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | EXCEP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | EXISTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | FALSE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | FIND ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | FST ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | HD ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | IF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | ISPAIR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | LENGTH ->
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
# 66 "Parser.mly"
                                            ( Find(e1,e2) )
# 899 "Parser.ml"
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
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | AND ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | BB ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | BEGIN ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | DCOTE ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | EQ ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | EXCEP ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | EXISTS ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | FALSE ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | FIND ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | FST ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | HD ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | IDENT _v ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
                | IF ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | ISPAIR ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | LENGTH ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | LITINT _v ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
                | MULT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | OR ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | REV ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | SND ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | SUB ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | SWITCH ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | TL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                | TRUE ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState81
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
    | MenhirState81 ->
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
                        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                    | AND ->
                        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                    | BB ->
                        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                    | BEGIN ->
                        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                    | DCOTE ->
                        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                    | EQ ->
                        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                    | EXCEP ->
                        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                    | EXISTS ->
                        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                    | FALSE ->
                        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                    | FIND ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                    | FST ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                    | HD ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                    | IDENT _v ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                    | IF ->
                        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                    | ISPAIR ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                    | LENGTH ->
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
# 1102 "Parser.ml"
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
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | AND ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | BB ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | BEGIN ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | DCOTE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | EQ ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | EXCEP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | EXISTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | FALSE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | FIND ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | FST ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | HD ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
            | IF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | ISPAIR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | LENGTH ->
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
    | MenhirState89 ->
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
# 1198 "Parser.ml"
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
                    _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState94
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94)
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
    | MenhirState97 ->
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
# 1256 "Parser.ml"
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
                    _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106)
            | EB ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (x : (SourceAst.case))) = _menhir_stack in
                let _v : (SourceAst.case list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 1280 "Parser.ml"
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
    | MenhirState102 ->
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
# 1315 "Parser.ml"
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
# 1336 "Parser.ml"
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
# 1348 "Parser.ml"
              
            in
            
# 50 "Parser.mly"
((fname, (para, e)))
# 1354 "Parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FUN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | ADD | AND | BB | BEGIN | DCOTE | EQ | EXCEP | EXISTS | FALSE | FIND | FST | HD | IDENT _ | IF | ISPAIR | LENGTH | LITINT _ | MULT | OR | REV | SND | SUB | SWITCH | TL | TRUE ->
                _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState110 ->
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
# 1388 "Parser.ml"
            ) = 
# 37 "Parser.mly"
( (f, e) )
# 1392 "Parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (
# 26 "Parser.mly"
      (SourceAst.prog)
# 1399 "Parser.ml"
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
    | MenhirState110 | MenhirState10 | MenhirState102 | MenhirState97 | MenhirState14 | MenhirState89 | MenhirState19 | MenhirState85 | MenhirState81 | MenhirState25 | MenhirState27 | MenhirState74 | MenhirState31 | MenhirState70 | MenhirState34 | MenhirState66 | MenhirState40 | MenhirState63 | MenhirState41 | MenhirState56 | MenhirState53 | MenhirState48 | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (v : (SourceAst.vall))) = _menhir_stack in
        let _v : (SourceAst.expr) = 
# 60 "Parser.mly"
         ( Const(v) )
# 1422 "Parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState95 ->
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
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | AND ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | BB ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | BEGIN ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | DCOTE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | EQ ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | EXCEP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | EXISTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | FALSE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | FIND ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | FST ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | HD ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | IF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | ISPAIR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | LENGTH ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | LITINT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | MULT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | REV ->
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
# 1517 "Parser.ml"
          
        in
        
# 68 "Parser.mly"
                                      ( Tab(t) )
# 1523 "Parser.ml"
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
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | AND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | BB ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | BEGIN ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | DCOTE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | EQ ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | EXCEP ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | EXISTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | FALSE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | FIND ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | FST ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | HD ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | IF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | ISPAIR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LENGTH ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LITINT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | EB ->
            _menhir_reduce18 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48)
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
# 1621 "Parser.ml"
     in
    _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 81 "Parser.mly"
         ( TL )
# 1633 "Parser.ml"
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
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | AND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | BB ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | BEGIN ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | DCOTE ->
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
# 79 "Parser.mly"
         ( Sub )
# 1717 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 85 "Parser.mly"
         ( Snd )
# 1729 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 83 "Parser.mly"
         ( REV )
# 1741 "Parser.ml"
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
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | AND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | BB ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | BEGIN ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | DCOTE ->
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
# 1825 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "Parser.mly"
       (int)
# 1832 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 10 "Parser.mly"
       (int)
# 1840 "Parser.ml"
    )) = _v in
    let _v : (SourceAst.vall) = 
# 53 "Parser.mly"
                                      ( IVal(i) )
# 1845 "Parser.ml"
     in
    _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 86 "Parser.mly"
         ( Length )
# 1857 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 87 "Parser.mly"
         ( IsPair )
# 1869 "Parser.ml"
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
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | AND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | BB ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | BEGIN ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | DCOTE ->
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
# 1948 "Parser.ml"
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
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | AND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | BB ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | BEGIN ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | DCOTE ->
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
# 2021 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (SourceAst.expr) = 
# 61 "Parser.mly"
           ( Var(id) )
# 2026 "Parser.ml"
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
# 82 "Parser.mly"
         ( HD )
# 2044 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 84 "Parser.mly"
         ( Fst )
# 2056 "Parser.ml"
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
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | AND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | BB ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | BEGIN ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | DCOTE ->
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
# 2140 "Parser.ml"
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
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | AND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | BB ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | BEGIN ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | DCOTE ->
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
# 2224 "Parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 80 "Parser.mly"
         ( Eq )
# 2236 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 2259 "Parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (string) = 
# 32 "Parser.mly"
                         ( id )
# 2266 "Parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (c : (string)) = _v in
            let _v : (SourceAst.vall) = 
# 56 "Parser.mly"
                                      ( CVal(c) )
# 2274 "Parser.ml"
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

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADD ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | AND ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | BB ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | BEGIN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | DCOTE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | EQ ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | EXCEP ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | EXISTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | FALSE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | FIND ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | FST ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | HD ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | IF ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | ISPAIR ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LENGTH ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LITINT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | MULT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | OR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | REV ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | SND ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | SUB ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | SWITCH ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | TL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | TRUE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADD ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | AND ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | BB ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | BEGIN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | DCOTE ->
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
    | EB ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState41 in
        let _v : (SourceAst.expr list) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 2413 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_expr__ _menhir_env _menhir_stack _menhir_s _v
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
    | BB ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | AND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | BB ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | BEGIN ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | DCOTE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | EQ ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | EXCEP ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | EXISTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | FALSE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | FIND ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | FST ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | HD ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | IF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | ISPAIR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | LENGTH ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | LITINT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 78 "Parser.mly"
         ( Add )
# 2501 "Parser.ml"
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
# 2515 "Parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (string list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2521 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (string list)) = _v in
        let _v : (string list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 2531 "Parser.ml"
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
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | AND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | BB ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | BEGIN ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | DCOTE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | EQ ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | EXCEP ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | EXISTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | FALSE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | FIND ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | FST ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | HD ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
        | IF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | ISPAIR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | LENGTH ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | LITINT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110)
    | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (fs : (SourceAst.Func_Tbl.key * SourceAst.fdef))), _, (p : (SourceAst.fdef SourceAst.Func_Tbl.t))) = _menhir_stack in
        let _v : (SourceAst.fdef SourceAst.Func_Tbl.t) = 
# 42 "Parser.mly"
    (
      let (id, infos) = fs in
      Func_Tbl.add id infos p
    )
# 2610 "Parser.ml"
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
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | AND ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | BB ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | BEGIN ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | DCOTE ->
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
# 2703 "Parser.ml"
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
# 2726 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (string list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 2731 "Parser.ml"
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
    | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState110 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState94 ->
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
    | MenhirState81 ->
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
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
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

and _menhir_reduce34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (SourceAst.fdef SourceAst.Func_Tbl.t) = 
# 40 "Parser.mly"
              ( Func_Tbl.empty )
# 2869 "Parser.ml"
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
# 2898 "Parser.ml"
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
# 2933 "Parser.ml"
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
    | ADD | AND | BB | BEGIN | DCOTE | EQ | EXCEP | EXISTS | FALSE | FIND | FST | HD | IDENT _ | IF | ISPAIR | LENGTH | LITINT _ | MULT | OR | REV | SND | SUB | SWITCH | TL | TRUE ->
        _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 219 "/usr/share/menhir/standard.mly"
  


# 2960 "Parser.ml"
