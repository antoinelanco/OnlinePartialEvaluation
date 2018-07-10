
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
    | NOT
    | MULT
    | LITINT of (
# 10 "Parser.mly"
       (int)
# 21 "Parser.ml"
  )
    | LET
    | LENGTH
    | ISPAIR
    | IN
    | IF
    | IDENT of (
# 7 "Parser.mly"
       (string)
# 31 "Parser.ml"
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
  | MenhirState122
  | MenhirState118
  | MenhirState114
  | MenhirState110
  | MenhirState105
  | MenhirState103
  | MenhirState102
  | MenhirState97
  | MenhirState94
  | MenhirState90
  | MenhirState86
  | MenhirState79
  | MenhirState75
  | MenhirState71
  | MenhirState68
  | MenhirState61
  | MenhirState58
  | MenhirState53
  | MenhirState48
  | MenhirState46
  | MenhirState45
  | MenhirState38
  | MenhirState35
  | MenhirState31
  | MenhirState29
  | MenhirState25
  | MenhirState19
  | MenhirState14
  | MenhirState10
  | MenhirState5
  | MenhirState3
  | MenhirState0

# 1 "Parser.mly"
  

  open SourceAst


# 110 "Parser.ml"

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
# 133 "Parser.ml"
              
            in
            
# 63 "Parser.mly"
                                                 ( Prim(bin,es) )
# 139 "Parser.ml"
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
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (id : (
# 7 "Parser.mly"
       (string)
# 160 "Parser.ml"
            ))), _, (xs0 : (SourceAst.expr list))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (SourceAst.expr) = let es =
              let xs = xs0 in
              
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 169 "Parser.ml"
              
            in
            
# 62 "Parser.mly"
                                                       ( Apply(id,es) )
# 175 "Parser.ml"
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
    | MenhirState102 ->
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
                    _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState110
                | AND ->
                    _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState110
                | BB ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState110
                | BEGIN ->
                    _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState110
                | DCOTE ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState110
                | DIV ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState110
                | EQ ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState110
                | EXCEP ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState110
                | EXISTS ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState110
                | FALSE ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState110
                | FIND ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState110
                | FST ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState110
                | HD ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState110
                | IDENT _v ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
                | IF ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState110
                | ISPAIR ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState110
                | LENGTH ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState110
                | LET ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState110
                | LITINT _v ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
                | MULT ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState110
                | NOT ->
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
    | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (SourceAst.case))), _, (xs : (SourceAst.case list))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.case list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 286 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_case_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run103 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DCOTE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | LITINT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | TRUE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103

and _menhir_goto_separated_nonempty_list_SEMI_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (SourceAst.expr list)) = _v in
        let _v : (SourceAst.expr list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 321 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_expr__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (SourceAst.expr list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.expr list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 333 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState31 | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (SourceAst.expr list)) = _v in
        let _v : (SourceAst.expr list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 349 "Parser.ml"
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
# 361 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (SourceAst.expr list) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 372 "Parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState31 | MenhirState58 | MenhirState53 ->
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
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | AND ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | BB ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | BEGIN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | DCOTE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | DIV ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | EQ ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | EXCEP ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | EXISTS ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | FALSE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | FIND ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | FST ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | HD ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | IDENT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | ISPAIR ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | LENGTH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | LITINT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | MULT ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | NOT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | OR ->
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
        | EB | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
            let _v : (SourceAst.expr list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 456 "Parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState48 ->
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
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | AND ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | BB ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | BEGIN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | DCOTE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | DIV ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | EQ ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | EXCEP ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | EXISTS ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | FALSE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | FIND ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | FST ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | HD ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | IDENT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | ISPAIR ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | LENGTH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | LITINT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | MULT ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | NOT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | REV ->
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
# 558 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState68 | MenhirState46 ->
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
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | AND ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | BB ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | BEGIN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | DCOTE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | DIV ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | EQ ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | EXCEP ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | EXISTS ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | FALSE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | FIND ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | FST ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | HD ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | IDENT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | ISPAIR ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | LENGTH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | LITINT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
            | MULT ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | NOT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68)
        | EB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (SourceAst.expr))) = _menhir_stack in
            let _v : (SourceAst.expr list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 643 "Parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMI_expr_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState45 ->
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
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | AND ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | BB ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | BEGIN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | DCOTE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | DIV ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | EQ ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | EXCEP ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | EXISTS ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | FALSE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | FIND ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | FST ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | HD ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | IDENT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | ISPAIR ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LENGTH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LITINT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | MULT ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | NOT ->
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
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (SourceAst.expr) = 
# 69 "Parser.mly"
                                      ( Pair(e1,e2) )
# 744 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
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
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | AND ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | BB ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | BEGIN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | DCOTE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | DIV ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | EQ ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | EXCEP ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | EXISTS ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | FALSE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | FIND ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | FST ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | HD ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | IDENT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | ISPAIR ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | LENGTH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | LITINT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | MULT ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | NOT ->
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
# 65 "Parser.mly"
                                              ( Exists(e1,e2) )
# 846 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState35 ->
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
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | AND ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | BB ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | BEGIN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | DCOTE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | DIV ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | EQ ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | EXCEP ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | EXISTS ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | FALSE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | FIND ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | FST ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | HD ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | IDENT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | ISPAIR ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | LENGTH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | LITINT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
            | MULT ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | NOT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState79 ->
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
# 948 "Parser.ml"
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
                    _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | AND ->
                    _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | BB ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | BEGIN ->
                    _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | DCOTE ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | DIV ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | EQ ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | EXCEP ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | EXISTS ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | FALSE ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | FIND ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | FST ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | HD ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | IDENT _v ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
                | IF ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | ISPAIR ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | LENGTH ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | LET ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | LITINT _v ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
                | MULT ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | NOT ->
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
    | MenhirState86 ->
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
                        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                    | AND ->
                        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                    | BB ->
                        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                    | BEGIN ->
                        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                    | DCOTE ->
                        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                    | DIV ->
                        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                    | EQ ->
                        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                    | EXCEP ->
                        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                    | EXISTS ->
                        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                    | FALSE ->
                        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                    | FIND ->
                        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                    | FST ->
                        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                    | HD ->
                        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                    | IDENT _v ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
                    | IF ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                    | ISPAIR ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                    | LENGTH ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                    | LET ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                    | LITINT _v ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
                    | MULT ->
                        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                    | NOT ->
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
# 1163 "Parser.ml"
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
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ADD ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | AND ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | BB ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | BEGIN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | DCOTE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | DIV ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | EQ ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | EXCEP ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | EXISTS ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | FALSE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | FIND ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | FST ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | HD ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | IDENT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | ISPAIR ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | LENGTH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | LITINT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | MULT ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | NOT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState94
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
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), (id : (
# 7 "Parser.mly"
       (string)
# 1254 "Parser.ml"
        ))), _, (e1 : (SourceAst.expr))), _, (e2 : (SourceAst.expr))) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : (SourceAst.expr) = 
# 72 "Parser.mly"
                                          ( Let(Var(id),e1,e2) )
# 1262 "Parser.ml"
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
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | AND ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | BB ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | BEGIN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | DCOTE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | DIV ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | EQ ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | EXCEP ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | EXISTS ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | FALSE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | FIND ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | FST ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | HD ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | IDENT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | ISPAIR ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | LENGTH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | LITINT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | MULT ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | NOT ->
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
    | MenhirState97 ->
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
# 1358 "Parser.ml"
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
                    _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState102
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
    | MenhirState105 ->
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
# 1416 "Parser.ml"
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
                    _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState114
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114)
            | EB ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (x : (SourceAst.case))) = _menhir_stack in
                let _v : (SourceAst.case list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 1440 "Parser.ml"
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
    | MenhirState110 ->
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
# 1475 "Parser.ml"
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
# 1496 "Parser.ml"
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
# 1508 "Parser.ml"
              
            in
            
# 50 "Parser.mly"
((fname, (para, e)))
# 1514 "Parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FUN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | ADD | AND | BB | BEGIN | DCOTE | DIV | EQ | EXCEP | EXISTS | FALSE | FIND | FST | HD | IDENT _ | IF | ISPAIR | LENGTH | LET | LITINT _ | MULT | NOT | OR | REV | SND | SUB | SWITCH | TL | TRUE ->
                _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState118 ->
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
# 1548 "Parser.ml"
            ) = 
# 33 "Parser.mly"
                       ( (f, e) )
# 1552 "Parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (
# 27 "Parser.mly"
      (SourceAst.prog)
# 1559 "Parser.ml"
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
    | MenhirState118 | MenhirState10 | MenhirState110 | MenhirState105 | MenhirState14 | MenhirState97 | MenhirState19 | MenhirState94 | MenhirState25 | MenhirState90 | MenhirState86 | MenhirState29 | MenhirState31 | MenhirState79 | MenhirState35 | MenhirState75 | MenhirState38 | MenhirState71 | MenhirState45 | MenhirState68 | MenhirState46 | MenhirState61 | MenhirState58 | MenhirState53 | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (v : (SourceAst.vall))) = _menhir_stack in
        let _v : (SourceAst.expr) = 
# 60 "Parser.mly"
         ( Const(v) )
# 1582 "Parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState103 ->
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
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | AND ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | BB ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | BEGIN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | DCOTE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | DIV ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | EQ ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | EXCEP ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | EXISTS ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | FALSE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | FIND ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | FST ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | HD ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | IDENT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | ISPAIR ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | LENGTH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | LITINT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | MULT ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | NOT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | OR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | REV ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | SND ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | SUB ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | SWITCH ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | TL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | TRUE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105)
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
# 1683 "Parser.ml"
          
        in
        
# 68 "Parser.mly"
                                      ( Tab(t) )
# 1689 "Parser.ml"
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
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | BB ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | BEGIN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | DCOTE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | EQ ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | EXCEP ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | EXISTS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | FALSE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | FIND ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | FST ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | HD ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
        | IF ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | ISPAIR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | LENGTH ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | LET ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | LITINT _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
        | MULT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | NOT ->
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
        | EB ->
            _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) MenhirState53
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
# 54 "Parser.mly"
                                      ( BVal(true) )
# 1793 "Parser.ml"
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
# 1805 "Parser.ml"
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
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | BB ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | BEGIN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | DCOTE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | EQ ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | EXCEP ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | EXISTS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FALSE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FIND ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FST ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | HD ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | IF ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | ISPAIR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LENGTH ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LET ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LITINT _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | MULT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | NOT ->
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
# 1895 "Parser.ml"
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
# 1907 "Parser.ml"
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
# 1919 "Parser.ml"
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
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | BB ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | BEGIN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | DCOTE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | EQ ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | EXCEP ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | EXISTS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | FALSE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | FIND ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | FST ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | HD ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | IF ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | ISPAIR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LENGTH ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LET ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LITINT _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | MULT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | NOT ->
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
# 90 "Parser.mly"
         ( Not )
# 2009 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 78 "Parser.mly"
         ( Mult )
# 2021 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "Parser.mly"
       (int)
# 2028 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 10 "Parser.mly"
       (int)
# 2036 "Parser.ml"
    )) = _v in
    let _v : (SourceAst.vall) = 
# 53 "Parser.mly"
                                      ( IVal(i) )
# 2041 "Parser.ml"
     in
    _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | AND ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | BB ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | BEGIN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | DCOTE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | DIV ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | EQ ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | EXCEP ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | EXISTS ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | FALSE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | FIND ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | FST ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | HD ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | IDENT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | ISPAIR ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | LENGTH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | LITINT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
            | MULT ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | NOT ->
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
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 88 "Parser.mly"
         ( Length )
# 2143 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 89 "Parser.mly"
         ( IsPair )
# 2155 "Parser.ml"
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
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | BB ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | BEGIN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | DCOTE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | EQ ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | EXCEP ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | EXISTS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | FALSE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | FIND ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | FST ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | HD ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
        | IF ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | ISPAIR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | LENGTH ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | LET ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | LITINT _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
        | MULT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | NOT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | OR ->
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

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "Parser.mly"
       (string)
# 2240 "Parser.ml"
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
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | BB ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | BEGIN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | DCOTE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | EQ ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | EXCEP ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | EXISTS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | FALSE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | FIND ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | FST ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | HD ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | IF ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | ISPAIR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LENGTH ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LET ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LITINT _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | MULT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | NOT ->
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
        | END ->
            _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31)
    | COMMA | EB | END | EOF | FE | IN | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (id : (
# 7 "Parser.mly"
       (string)
# 2319 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (SourceAst.expr) = 
# 61 "Parser.mly"
           ( Var(id) )
# 2324 "Parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 84 "Parser.mly"
         ( HD )
# 2342 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 86 "Parser.mly"
         ( Fst )
# 2354 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | BB ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | BEGIN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | DCOTE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | EQ ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | EXCEP ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | EXISTS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | FALSE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | FIND ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | FST ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | HD ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | IF ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | ISPAIR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LENGTH ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LET ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LITINT _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | MULT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | NOT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.vall) = 
# 55 "Parser.mly"
                                      ( BVal(false) )
# 2444 "Parser.ml"
     in
    _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | BB ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | BEGIN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | DCOTE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | EQ ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | EXCEP ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | EXISTS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | FALSE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | FIND ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | FST ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | HD ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | IF ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | ISPAIR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LENGTH ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LET ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LITINT _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | MULT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | NOT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | OR ->
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.expr) = 
# 59 "Parser.mly"
        ( Exception )
# 2534 "Parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 82 "Parser.mly"
         ( Eq )
# 2546 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 79 "Parser.mly"
         ( Div )
# 2558 "Parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 2581 "Parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (string) = 
# 36 "Parser.mly"
                         ( id )
# 2588 "Parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (c : (string)) = _v in
            let _v : (SourceAst.vall) = 
# 56 "Parser.mly"
                                      ( CVal(c) )
# 2596 "Parser.ml"
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

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADD ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | AND ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | BB ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | BEGIN ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | DCOTE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | DIV ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | EQ ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | EXCEP ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | EXISTS ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | FIND ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | FST ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | HD ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | ISPAIR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LENGTH ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LET ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LITINT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | MULT ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NOT ->
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
    | ADD ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | AND ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | BB ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | BEGIN ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | DCOTE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | DIV ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | EQ ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | EXCEP ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | EXISTS ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | FIND ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | FST ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | HD ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | ISPAIR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | LENGTH ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | LET ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | LITINT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | MULT ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | NOT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | OR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | REV ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | SND ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | SUB ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | SWITCH ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | TL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | TRUE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | EB ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState46 in
        let _v : (SourceAst.expr list) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 2747 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_expr__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | BB ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | BEGIN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | DCOTE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | EQ ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | EXCEP ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | EXISTS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | FALSE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | FIND ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | FST ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | HD ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | IF ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | ISPAIR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LENGTH ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LET ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LITINT _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | MULT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | NOT ->
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
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.op) = 
# 80 "Parser.mly"
         ( Add )
# 2841 "Parser.ml"
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
# 2855 "Parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (string list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2861 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (string list)) = _v in
        let _v : (string list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 2871 "Parser.ml"
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
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | BB ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | BEGIN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | DCOTE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | EQ ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | EXCEP ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | EXISTS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | FALSE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | FIND ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | FST ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | HD ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
        | IF ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | ISPAIR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | LENGTH ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | LET ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | LITINT _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
        | MULT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | NOT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | OR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | REV ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | SND ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | SUB ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | SWITCH ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | TL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | TRUE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118)
    | MenhirState122 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (fs : (SourceAst.Func_Tbl.key * SourceAst.fdef))), _, (p : (SourceAst.fdef SourceAst.Func_Tbl.t))) = _menhir_stack in
        let _v : (SourceAst.fdef SourceAst.Func_Tbl.t) = 
# 42 "Parser.mly"
    (
      let (id, infos) = fs in
      Func_Tbl.add id infos p
    )
# 2956 "Parser.ml"
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
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | AND ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | BB ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | BEGIN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | DCOTE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | DIV ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | EQ ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | EXCEP ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | EXISTS ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FALSE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FIND ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FST ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | HD ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | IDENT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | ISPAIR ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LENGTH ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LITINT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | MULT ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | NOT ->
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
# 3055 "Parser.ml"
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
# 3078 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (string list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 3083 "Parser.ml"
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
    | MenhirState122 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState118 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState110 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState105 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState97 ->
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
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState79 ->
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
    | MenhirState68 ->
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
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState25 ->
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

and _menhir_reduce37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (SourceAst.fdef SourceAst.Func_Tbl.t) = 
# 40 "Parser.mly"
              ( Func_Tbl.empty )
# 3229 "Parser.ml"
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
# 3258 "Parser.ml"
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
# 3293 "Parser.ml"
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
    | ADD | AND | BB | BEGIN | DCOTE | DIV | EQ | EXCEP | EXISTS | FALSE | FIND | FST | HD | IDENT _ | IF | ISPAIR | LENGTH | LET | LITINT _ | MULT | NOT | OR | REV | SND | SUB | SWITCH | TL | TRUE ->
        _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 219 "/usr/share/menhir/standard.mly"
  


# 3320 "Parser.ml"
