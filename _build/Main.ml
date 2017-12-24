let () =

  let arg = Sys.argv.(1) in
  let c   = open_in arg in
  let lb  = Lexing.from_channel c in
  let p   = Parser.prog Lexer.token lb in
  (* let _   = let p,_ = p in List.iter(fun (i,_) -> Printf.printf "%s\n" i) p in *)
  let _   = Interpreter.eval p in
  close_in c;
