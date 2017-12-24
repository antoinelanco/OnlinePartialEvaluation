let () =
  let file = Sys.argv.(1) in
  let c    = open_in file in
  let lb   = Lexing.from_channel c in
  let p    = Parser.prog Lexer.token lb in
  let _    = Interpreter2.eval p in
  close_in c;
