let () =
  let file = Sys.argv.(1) in
  let c    = open_in file in
  let lb   = Lexing.from_channel c in
  let p    = Parser.prog Lexer.token lb in
  let pl   = Lib.addLib p in
  let _    = Interpreter3.eval pl in
  close_in c;
