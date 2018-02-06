let () =
  let file = Sys.argv.(1) in
  let c    = open_in file in
  let lb   = Lexing.from_channel c in
  let p    = Parser.prog Lexer.token lb in
  let pl   = Lib.addLib p in
  let r    = Interpreter4.eval pl in
  let r    = PostEval.main r in
  let _    = Printer.print r in
  close_in c;
