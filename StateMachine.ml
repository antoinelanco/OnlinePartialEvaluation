

type state = int
type label = char
type transitions = (state * ((label * state) list)) list
type accept = state list
type input = label list

let rec run s a t ls =

  (* Version petite langaue *)
  if ls = []
  then List.mem s a
  else begin
    if List.exists (fun i -> if (fst i) == s then true else false) t
    then begin
      if List.exists (fun i -> if (fst i) == (List.hd ls) then true else false)  (snd(List.find (fun i -> if s == (fst i) then true else false) t))
      then run
          (snd(List.find (fun j -> if (fst j) == (List.hd ls) then true else false ) (snd(List.find (fun i -> if s == (fst i) then true else false) t))))
          a
          t
          (List.tl ls)
      else false
    end
    else false
  end



(*
(* Version OCAML *)
match ls with
| [] -> List.mem s a
| el::rest ->
  (match Trans.find_opt s t with
    | None -> false
    | Some n ->
      let tmp = List.find_opt (fun elem ->
          let el1 = fst elem in
          if el == el1 then true else false ) n in
          (match tmp with
          | None -> false
          | Some nn -> let e2 = snd nn in run e2 a t rest )) *)

let main =

  (* Machine 1 *)
  (* let s = 1 in
     let a = [2] in
     let t = Trans.add 1 [('a', 2)] (Trans.singleton 2 [('b', 1)]) in
     let ls = ['a';'b';'a';'b';'a'] in *)

  (* Machine 2 *)
  (* let s = 1 in
     let a = [1] in
     let t = Trans.singleton 1 [('a', 1);('b', 1)] in
     let ls = ['a';'a';'a';'b';'a'] in *)

  (* Machine 3 *)
  let s = 1 in
  let a = [1] in
  let t = [(1,[('a', 1);('b', 1)])] in
  let ls = ['a';'a';'a';'b';'a'] in


  Printf.printf "%b\n" (run s a t ls)
