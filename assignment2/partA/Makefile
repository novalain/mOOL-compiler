all: mOOL_checker clean

mOOL_checker:mOOL_lexer.cmo mOOL_parser.cmo mOOL_structs.cmo mOOL_annotatedtyping.cmo mOOL_main.ml
	ocamlc mOOL_structs.cmo mOOL_lexer.cmo mOOL_parser.cmo mOOL_annotatedtyping.cmo mOOL_main.ml -o mOOL_checker

mOOL_checker_non_opt:mOOL_lexer.cmo mOOL_parser.cmo mOOL_structs.cmo mOOL_annotatedtyping.cmo mOOL_main.ml
	ocamlc mOOL_structs.cmo mOOL_lexer.cmo mOOL_parser.cmo mOOL_annotatedtyping.cmo mOOL_main.ml -o mOOL_checker_non_opt clean

mOOL_parser.cmo: mOOL_parser.ml mOOL_parser.cmi mOOL_structs.cmo
	ocamlc -c mOOL_structs.cmo mOOL_parser.ml
mOOL_parser.cmi: mOOL_parser.mli mOOL_structs.cmo
	ocamlc -c mOOL_structs.cmo mOOL_parser.mli
mOOL_parser.mli: mOOL_parser.mly
	ocamlyacc -v mOOL_parser.mly
mOOL_parser.ml: mOOL_parser.mly

mOOL_lexer.cmo: mOOL_lexer.ml mOOL_parser.cmo
	ocamlc -c mOOL_parser.cmo mOOL_lexer.ml
mOOL_lexer.ml: mOOL_lexer.mll
	ocamllex mOOL_lexer.mll

mOOL_structs.cmo: mOOL_structs.ml
	ocamlc -c mOOL_structs.ml

mOOL_annotatedtyping.cmo: mOOL_annotatedtyping.ml mOOL_structs.cmo
	ocamlc -c mOOL_structs.cmo mOOL_annotatedtyping.ml

.PHONY: clean
clean:
	rm *.cmi *.cmo *.mli mOOL_parser.ml mOOL_lexer.ml

