open SourceAst

let addLib p =
  let (fdefs,main) = p in

  let find = Func_Tbl.singleton "funfind" (["el";"tab"],
    If(Prim(Eq,[Var("tab");Const(TVal([]))]),
    Exception,
    If(Prim(Eq,[Var("el");Apply("fungeteven",[HD(Var("tab"))])]),
    HD(Var("tab")),
    Apply("funfind",[Var("el");TL(Var("tab"))])))
    ) in


  let exists = Func_Tbl.singleton "funexists" (["el";"tab"],
    If(Prim(Eq,[Var("tab");Const(TVal([]))]),
    Const(BVal false),
    If(Prim(Eq,[Var("el");Apply("fungeteven",[HD(Var("tab"))])]),
    Const(BVal(true)),
    Apply("funexists",[Var("el");TL(Var("tab"))])))
    ) in

  let geteven = Func_Tbl.singleton "fungeteven" (["el"],
    If(IsEven(Var("el")),
    Apply("fungeteven",[Fst(Var("el"))]),
    Var("el"))
    ) in


  let new_fdefs = Func_Tbl.merge merge_vars fdefs exists in
  let new_fdefs = Func_Tbl.merge merge_vars new_fdefs geteven in
  let new_fdefs = Func_Tbl.merge merge_vars new_fdefs find in
  (new_fdefs,main)
