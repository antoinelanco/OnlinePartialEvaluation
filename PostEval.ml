open SourceAst

let rec main p =
  let (fdefs,main) = p in
  let new_fd = Func_Tbl.map (fun (p,e) -> (p,modif e) ) fdefs in
  (new_fd,modif main)

and modif = function
  | Switch(e1,es,e2) ->
    let new_es = List.map (fun (i1,i2) -> tSwitch e1 i1 i2) es in
    Switch(modif e1,new_es,modif e2)

  | Exception     -> Exception
  | Const(v)      -> Const(v)
  | Var(s)        -> Var(s)
  | TL(e)         -> TL(modif e)
  | HD(e)         -> HD(modif e)
  | Length(e)     -> Length(modif e)
  | Fst(e)        -> Fst(modif e)
  | Snd(e)        -> Snd(modif e)
  | IsPair(e)     -> IsPair(modif e)
  | Exists(e1,e2) -> Exists(modif e1,modif e2)
  | Find(e1,e2)   -> Find(modif e1,modif e2)
  | If(e0,e1,e2)  -> If(modif e0,modif e1,modif e2)
  | Prim(o,es)    -> Prim(o,List.map(fun i -> modif i) es)
  | Apply(s,es)   -> Apply(s,List.map(fun i -> modif i) es)


and tSwitch ee1 i1 = function
  | Switch(e1,es,e2) when ee1 = e1 ->
    (match List.assoc_opt i1 es with
     | Some i -> (i1,modif i)
     | None -> (i1,modif e2))
  | n -> (i1,modif n)
