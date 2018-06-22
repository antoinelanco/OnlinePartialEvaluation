open Format

let set_file s =
    if not (Filename.check_suffix s ".lan")
    then raise (Arg.Bad "no .lan extension")
    else s

let file = set_file Sys.argv.(1)
let c    = open_in file
let lb   = Lexing.from_channel c
let p    = Parser.prog Lexer.token lb
(* let p   = Lib.addLib p *)
let r    = Interpreter4.eval p
let res    = Printer.print r

let output_file = (Filename.chop_suffix file ".lan") ^ ".rlan"
let out = open_out output_file
let outf = formatter_of_out_channel out


let () =
  fprintf outf "%s" res;
  pp_print_flush outf ();
  close_out out
