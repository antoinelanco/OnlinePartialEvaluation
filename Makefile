
.PHONY: 	all clean native profile debug sanity test

OCB_FLAGS   = -cflag -w -cflag -40 -use-ocamlfind -use-menhir
OCB = ocamlbuild $(OCB_FLAGS)

all: native # profile debug

clean:
	$(OCB) -clean

native: sanity
	$(OCB) Main.native

profile: sanity
	$(OCB) -tag profile Main.native

# check that menhir is installed, use "opam install menhir"
sanity:
	which menhir

test: native
	./main.native "2 + 3 * 3"
