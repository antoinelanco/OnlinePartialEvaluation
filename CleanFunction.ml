open SourceAst

let rec cleanFunc (fdefs,main) : SourceAst.prog =
  (cleanMain fdefs Func_Tbl.empty main,main)




and cleanMain fdefs func = function
  | Const _ | Var _ | Exception -> func
  | Prim(_,es) | Tab es -> cleanMainList fdefs func es
  | If (e1,e2,e3)   -> cleanMainList fdefs func [e1;e2;e3]
  | Find (e1,e2) | Exists (e1,e2) | Pair(e1,e2) | AND(e1,e2) | OR(e1,e2)
  | Let(_,e1,e2) -> cleanMainList fdefs func [e1;e2]
  | Switch(e1,es,e2)  -> cleanMainList fdefs (cleanMainCase fdefs func es) [e1;e2]
  | Apply(ss,es) ->
    let new_func = cleanMainList fdefs func es in
    if Func_Tbl.exists (fun k _ -> ss = k) new_func
    then new_func
    else

      let (_,body) =
        match Func_Tbl.find_opt ss fdefs with
        | Some n -> n
        | None -> failwith ("La fonction "^ss^" n'existe pas !")
      in


      cleanMain fdefs (Func_Tbl.add ss (Func_Tbl.find ss fdefs) new_func) body



and cleanMainList fdefs func es =
  List.fold_left (fun acc i -> Func_Tbl.merge merge_vars (cleanMain fdefs func i) acc) func es

and cleanMainCase fdefs func es =
  List.fold_left (fun acc (_,i) -> Func_Tbl.merge merge_vars (cleanMain fdefs func i) acc) func es
