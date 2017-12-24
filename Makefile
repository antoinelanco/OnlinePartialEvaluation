
.PHONY: 	all clean byte native profile debug sanity test

OCB_FLAGS   = -cflag -w -cflag -40 -use-ocamlfind -use-menhir
OCB = ocamlbuild $(OCB_FLAGS)

all: native byte # profile debug

clean:
	$(OCB) -clean

native: sanity
	$(OCB) Main.native

byte: sanity
	$(OCB) Main.byte

profile: sanity
	$(OCB) -tag profile Main.native

debug: sanity
	$(OCB) -tag debug Main.byte

# check that menhir is installed, use "opam install menhir"
sanity:
	which menhir

test: native
	./main.native "2 + 3 * 3"
