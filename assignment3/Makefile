all:mOOL_compiler clean

mOOL_compiler:mOOL_lexer.cmo mOOL_parser.cmo mOOL_structs.cmo mOOL_annotatedtyping.cmo ir3mOOL_structs.cmo arm_structs.cmo mOOLtoir3.cmo ir3_to_ARM_non_opt.cmo mOOL_main.ml
	ocamlc -annot mOOL_structs.cmo mOOL_lexer.cmo mOOL_parser.cmo mOOL_annotatedtyping.cmo ir3mOOL_structs.cmo arm_structs.cmo mOOLtoir3.cmo ir3_to_ARM_non_opt.cmo mOOL_main.ml -o mOOL_compiler

mOOL_parser.cmo:mOOL_parser.ml mOOL_parser.cmi mOOL_structs.cmo
	ocamlc -annot -c mOOL_structs.cmo mOOL_parser.ml
mOOL_parser.cmi:mOOL_parser.mli mOOL_structs.cmo
	ocamlc -c mOOL_structs.cmo mOOL_parser.mli
mOOL_parser.mli:mOOL_parser.mly
	ocamlyacc mOOL_parser.mly
mOOL_parser.ml:mOOL_parser.mly
	ocamlyacc mOOL_parser.mly

mOOL_lexer.cmo:mOOL_lexer.ml mOOL_parser.cmo
	ocamlc -annot -c mOOL_parser.cmo mOOL_lexer.ml
mOOL_lexer.ml:mOOL_lexer.mll
	ocamllex mOOL_lexer.mll

mOOL_structs.cmo:mOOL_structs.ml
	ocamlc -annot -c mOOL_structs.ml

mOOL_annotatedtyping.cmo:mOOL_annotatedtyping.ml mOOL_structs.cmo
	ocamlc -annot -c mOOL_structs.cmo mOOL_annotatedtyping.ml

mOOLtoir3.cmo:mOOLtoir3.ml mOOL_structs.cmo ir3mOOL_structs.cmo
	ocamlc -annot -c mOOL_structs.cmo ir3mOOL_structs.cmo mOOLtoir3.ml

ir3_to_ARM_non_opt.cmo:ir3_to_ARM_non_opt.ml mOOL_structs.cmo ir3mOOL_structs.cmo
	ocamlc -annot -c mOOL_structs.cmo ir3mOOL_structs.cmo ir3_to_ARM_non_opt.ml

ir3mOOL_structs.cmo:mOOL_structs.cmo ir3mOOL_structs.ml
	ocamlc -annot -c mOOL_structs.cmo ir3mOOL_structs.ml

arm_structs.cmo: arm_structs.ml
	ocamlc -annot -c arm_structs.ml


.PHONY:clean
clean:
	rm *.cmi *.cmo *.mli *.annot mOOL_parser.ml mOOL_lexer.ml