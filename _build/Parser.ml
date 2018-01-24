exception Error

type token = 
  | VAR
  | TVAL
  | TRUE
  | TL
  | SUB
  | SND
  | SEMI
  | PVAL
  | PRIM
  | MULT
  | LITINT of (int)
  | LENGTH
  | IVAL
  | ISEVEN
  | IF
  | IDENT of (string)
  | HD
  | FST
  | FIND
  | FALSE
  | EXISTS
  | EXCEP
  | EQ
  | EOF
  | END
  | EB
  | DCOTE
  | CVAL
  | CONST
  | COMMA
  | BVAL
  | BEGIN
  | BB
  | APPLAY
  | ADD

and _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  mutable _menhir_token: token;
  mutable _menhir_startp: Lexing.position;
  mutable _menhir_endp: Lexing.position;
  mutable _menhir_shifted: int
}

and _menhir_state = 
  | MenhirState117
  | MenhirState113
  | MenhirState96
  | MenhirState93
  | MenhirState84
  | MenhirState80
  | MenhirState77
  | MenhirState72
  | MenhirState70
  | MenhirState63
  | MenhirState59
  | MenhirState53
  | MenhirState50
  | MenhirState48
  | MenhirState46
  | MenhirState43
  | MenhirState41
  | MenhirState39
  | MenhirState37
  | MenhirState35
  | MenhirState33
  | MenhirState31
  | MenhirState29
  | MenhirState22
  | MenhirState20
  | MenhirState17
  | MenhirState16
  | MenhirState11
  | MenhirState9
  | MenhirState2

  

  open SourceAst

let _eRR =
  Error

let rec _menhir_goto_loption_separated_nonempty_list_SEMI_vall__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.vall list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EB ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _ = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, xs0) = _menhir_stack in
        let _v : (SourceAst.vall) = let t =
          let xs = xs0 in
              ( xs )
        in
                                                    ( TVal(t) ) in
        _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, id), _, xs0) = _menhir_stack in
            let _v : (SourceAst.expr) = let es =
              let xs = xs0 in
                  ( xs )
            in
                                                                    ( Apply(id,es) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), bin), _, xs0) = _menhir_stack in
            let _v : (SourceAst.expr) = let es =
              let xs = xs0 in
                  ( xs )
            in
                                                                   ( Prim(bin,es) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_op : _menhir_env -> 'ttv_tail -> (SourceAst.op) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BB ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | APPLAY ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | CONST ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | EXCEP ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | EXISTS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | FIND ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | FST ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | HD ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | ISEVEN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | LENGTH ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | PRIM ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | SND ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | TL ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | VAR ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | EB ->
            _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_separated_nonempty_list_SEMI_vall_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.vall list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let xs = _v in
        let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : (SourceAst.vall list) =     ( x :: xs ) in
        _menhir_goto_separated_nonempty_list_SEMI_vall_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let x = _v in
        let _v : (SourceAst.vall list) =     ( x ) in
        _menhir_goto_loption_separated_nonempty_list_SEMI_vall__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | BB ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | BVAL ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | CVAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | IVAL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | PVAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | TVAL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | EB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState48 in
            let _v : (SourceAst.vall list) =     ( [] ) in
            _menhir_goto_loption_separated_nonempty_list_SEMI_vall__ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | BEGIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | BVAL ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | CVAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | IVAL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | PVAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | TVAL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | LITINT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _ = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let i = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (SourceAst.vall) =                                             ( IVal(i) ) in
        _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | DCOTE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | FALSE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _ = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (SourceAst.vall) =                                             ( BVal(false) ) in
        _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v
    | TRUE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _ = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (SourceAst.vall) =                                             ( BVal(true) ) in
        _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState29 | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let x = _v in
        let _v : (SourceAst.expr list) =     ( x ) in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let xs = _v in
        let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : (SourceAst.expr list) =     ( x :: xs ) in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_progs : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.fdef SourceAst.Func_Tbl.t) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState2 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | COMMA ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _tok = _menhir_discard _menhir_env in
                (match _tok with
                | APPLAY ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | CONST ->
                    _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | EXCEP ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | EXISTS ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | FIND ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | FST ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | HD ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | IF ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | ISEVEN ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | LENGTH ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | PRIM ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | SND ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | TL ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | VAR ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113)
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState117 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, fs), _, p) = _menhir_stack in
        let _v : (SourceAst.fdef SourceAst.Func_Tbl.t) =     (
      let (id, infos) = fs in
      Func_Tbl.add id infos p
    ) in
        _menhir_goto_progs _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (SourceAst.expr list) =     ( [] ) in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | DCOTE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | BEGIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | APPLAY ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | CONST ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | EXCEP ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | EXISTS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | FIND ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | FST ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | HD ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | ISEVEN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LENGTH ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | PRIM ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | SND ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | TL ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | VAR ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | BEGIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | APPLAY ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | CONST ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | EXCEP ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | EXISTS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | FIND ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | FST ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | HD ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | ISEVEN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | LENGTH ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | PRIM ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | SND ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | TL ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | VAR ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | ADD ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _ = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _v : (SourceAst.op) =        ( Add ) in
        _menhir_goto_op _menhir_env _menhir_stack _v
    | EQ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _ = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _v : (SourceAst.op) =        ( Eq ) in
        _menhir_goto_op _menhir_env _menhir_stack _v
    | MULT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _ = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _v : (SourceAst.op) =        ( Mult ) in
        _menhir_goto_op _menhir_env _menhir_stack _v
    | SUB ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _ = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _v : (SourceAst.op) =        ( Sub ) in
        _menhir_goto_op _menhir_env _menhir_stack _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | BEGIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | APPLAY ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | CONST ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | EXCEP ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | EXISTS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | FIND ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | FST ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | HD ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | ISEVEN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LENGTH ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | PRIM ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | SND ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | TL ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | VAR ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | BEGIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | APPLAY ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | CONST ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | EXCEP ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | EXISTS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | FIND ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | FST ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | HD ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | ISEVEN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LENGTH ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | PRIM ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | SND ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | TL ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | VAR ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | BEGIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | APPLAY ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | CONST ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | EXCEP ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | EXISTS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | FIND ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | FST ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | HD ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | ISEVEN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LENGTH ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | PRIM ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | SND ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | TL ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | VAR ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | BEGIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | APPLAY ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | CONST ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | EXCEP ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | EXISTS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | FIND ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | FST ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | HD ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | ISEVEN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LENGTH ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | PRIM ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | SND ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | TL ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | VAR ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | BEGIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | APPLAY ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | CONST ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | EXCEP ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | EXISTS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | FIND ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | FST ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | HD ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | ISEVEN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LENGTH ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | PRIM ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | SND ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | TL ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | VAR ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | BEGIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | APPLAY ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | CONST ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | EXCEP ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | EXISTS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | FIND ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | FST ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | HD ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | ISEVEN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | LENGTH ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | PRIM ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | SND ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | TL ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | VAR ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | BEGIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | APPLAY ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | CONST ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | EXCEP ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | EXISTS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | FIND ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | FST ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | HD ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | ISEVEN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | LENGTH ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | PRIM ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | SND ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | TL ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | VAR ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (SourceAst.expr) =         ( Exception ) in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | BEGIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | BVAL ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | CVAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | IVAL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | PVAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | TVAL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run70 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | DCOTE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70

and _menhir_goto_vall : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.vall) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | BVAL ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | CVAL ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | IVAL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | PVAL ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | TVAL ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, e1), _, e2) = _menhir_stack in
            let _v : (SourceAst.vall) =                                             ( PVal(e1,e2) ) in
            _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState63 | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | BVAL ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | CVAL ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | IVAL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | PVAL ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | TVAL ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63)
        | EB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : (SourceAst.vall list) =     ( [ x ] ) in
            _menhir_goto_separated_nonempty_list_SEMI_vall_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, v) = _menhir_stack in
            let _v : (SourceAst.expr) =                             ( Const(v) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState29 | MenhirState77 | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | APPLAY ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | CONST ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | EXCEP ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | EXISTS ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | FIND ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | FST ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | HD ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | IF ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | ISEVEN ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LENGTH ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | PRIM ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | SND ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | TL ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | VAR ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77)
        | EB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : (SourceAst.expr list) =     ( [ x ] ) in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | APPLAY ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | CONST ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | EXCEP ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | EXISTS ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | FIND ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | FST ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | HD ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | IF ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | ISEVEN ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | LENGTH ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | PRIM ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | SND ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | TL ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | VAR ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, e1), _, e2) = _menhir_stack in
            let _v : (SourceAst.expr) =                                               ( Exists(e1,e2) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | APPLAY ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | CONST ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | EXCEP ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | EXISTS ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | FIND ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | FST ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | HD ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | IF ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | ISEVEN ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | LENGTH ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | PRIM ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | SND ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | TL ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | VAR ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, e1), _, e2) = _menhir_stack in
            let _v : (SourceAst.expr) =                                             ( Find(e1,e2) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _v : (SourceAst.expr) =                           ( Fst(e) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _v : (SourceAst.expr) =                          ( HD(e) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | BEGIN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _tok = _menhir_discard _menhir_env in
                (match _tok with
                | APPLAY ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | CONST ->
                    _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | EXCEP ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | EXISTS ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | FIND ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | FST ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | HD ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | IF ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | ISEVEN ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | LENGTH ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | PRIM ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | SND ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | TL ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | VAR ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState93
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93)
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | BEGIN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _tok = _menhir_discard _menhir_env in
                (match _tok with
                | APPLAY ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | CONST ->
                    _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | EXCEP ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | EXISTS ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | FIND ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | FST ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | HD ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | IF ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | ISEVEN ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | LENGTH ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | PRIM ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | SND ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | TL ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | VAR ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96)
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, e1), _, e2), _, e3) = _menhir_stack in
            let _v : (SourceAst.expr) =                                                                     ( If(e1,e2,e3) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _v : (SourceAst.expr) =                             ( IsEven(e) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _v : (SourceAst.expr) =                              ( Length(e) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _v : (SourceAst.expr) =                           ( Snd(e) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _v : (SourceAst.expr) =                          ( TL(e) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, fname), _, xs0), _, e) = _menhir_stack in
            let _v : (SourceAst.Func_Tbl.key * SourceAst.fdef) = let para =
              let xs = xs0 in
                  ( xs )
            in
             ((fname, (para, e))) in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | DCOTE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | EB ->
                _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState113 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | EOF ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _, f), _, e) = _menhir_stack in
                let _v : (SourceAst.prog) = ( (f, e) ) in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _1 = _v in
                Obj.magic _1
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_str_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.Func_Tbl.key list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let xs = _v in
        let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : (SourceAst.Func_Tbl.key list) =     ( x :: xs ) in
        _menhir_goto_separated_nonempty_list_COMMA_str_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let x = _v in
        let _v : (SourceAst.Func_Tbl.key list) =     ( x ) in
        _menhir_goto_loption_separated_nonempty_list_COMMA_str__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_str__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.Func_Tbl.key list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EB ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | APPLAY ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | CONST ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | EXCEP ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | EXISTS ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | FIND ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | FST ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | HD ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | IF ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | ISEVEN ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | LENGTH ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | PRIM ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | SND ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | TL ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | VAR ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState117 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState113 ->
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
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState2 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_reduce27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (SourceAst.fdef SourceAst.Func_Tbl.t) =               ( Func_Tbl.empty ) in
    _menhir_goto_progs _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | IDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | DCOTE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), id) = _menhir_stack in
            let _v : (SourceAst.Func_Tbl.key) =                          ( id ) in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState117 | MenhirState2 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | COMMA ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _tok = _menhir_discard _menhir_env in
                    (match _tok with
                    | BEGIN ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _tok = _menhir_discard _menhir_env in
                        (match _tok with
                        | BB ->
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let _tok = _menhir_discard _menhir_env in
                            (match _tok with
                            | DCOTE ->
                                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                            | EB ->
                                let _menhir_stack = Obj.magic _menhir_stack in
                                let _menhir_s = MenhirState9 in
                                let _v : (SourceAst.Func_Tbl.key list) =     ( [] ) in
                                _menhir_goto_loption_separated_nonempty_list_COMMA_str__ _menhir_env _menhir_stack _menhir_s _v
                            | _ ->
                                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                                _menhir_env._menhir_shifted <- (-1);
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9)
                        | _ ->
                            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                            _menhir_env._menhir_shifted <- (-1);
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                    | _ ->
                        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                        _menhir_env._menhir_shifted <- (-1);
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState11 | MenhirState9 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | COMMA ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _tok = _menhir_discard _menhir_env in
                    (match _tok with
                    | DCOTE ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState11
                    | _ ->
                        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                        _menhir_env._menhir_shifted <- (-1);
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11)
                | EB ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, x) = _menhir_stack in
                    let _v : (SourceAst.Func_Tbl.key list) =     ( [ x ] ) in
                    _menhir_goto_separated_nonempty_list_COMMA_str_ _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState17 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _, id) = _menhir_stack in
                let _v : (SourceAst.expr) =               ( Var(id) ) in
                _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
            | MenhirState53 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _, c) = _menhir_stack in
                let _v : (SourceAst.vall) =                                             ( CVal(c) ) in
                _menhir_goto_vall _menhir_env _menhir_stack _menhir_s _v
            | MenhirState70 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BB ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _tok = _menhir_discard _menhir_env in
                    (match _tok with
                    | APPLAY ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                    | CONST ->
                        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                    | EXCEP ->
                        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                    | EXISTS ->
                        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                    | FIND ->
                        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                    | FST ->
                        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                    | HD ->
                        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                    | IF ->
                        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                    | ISEVEN ->
                        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                    | LENGTH ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                    | PRIM ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                    | SND ->
                        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                    | TL ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                    | VAR ->
                        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                    | EB ->
                        _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                    | _ ->
                        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                        _menhir_env._menhir_shifted <- (-1);
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72)
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_discard : _menhir_env -> token =
  fun _menhir_env ->
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = _menhir_env._menhir_lexer lexbuf in
    _menhir_env._menhir_token <- _tok;
    _menhir_env._menhir_startp <- lexbuf.Lexing.lex_start_p;
    _menhir_env._menhir_endp <- lexbuf.Lexing.lex_curr_p;
    let shifted = Pervasives.(+) _menhir_env._menhir_shifted 1 in
    if Pervasives.(>=) shifted 0 then
      _menhir_env._menhir_shifted <- shifted;
    _tok

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (SourceAst.prog) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_startp = lexbuf.Lexing.lex_start_p;
      _menhir_endp = lexbuf.Lexing.lex_curr_p;
      _menhir_shifted = max_int;
      } in
    Obj.magic (let _menhir_stack = () in
    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | BB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | DCOTE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
            | EB ->
                _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack) MenhirState2
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            raise _eRR)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR)



