.PHONY: 	all clean native depend

OCB_FLAGS   = -cflag -w -cflag -40 -use-ocamlfind -use-menhir
OCB = ocamlbuild $(OCB_FLAGS)

all: native

clean:
	$(OCB) -clean

native: depend
	$(OCB) Main.native

depend:
	ocamldep *.ml > .depend

include .depend
