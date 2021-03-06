type token =
  | AND
  | OR
  | EQ
  | NEQ
  | PLUS
  | MINUS
  | MULTIPLY
  | DIVIDE
  | GRE
  | GEQ
  | LE
  | LEQ
  | NEG
  | ASSIGN
  | INT_KWORD
  | BOOL_KWORD
  | STRING_KWORD
  | VOID_KWORD
  | TRUE_KWORD
  | FALSE_KWORD
  | CLASS_KWORD
  | WHILE_KWORD
  | IF_KWORD
  | ELSE_KWORD
  | RETURN_KWORD
  | THIS_KWORD
  | SUPER_KWORD
  | NULL_KWORD
  | NEW_KWORD
  | MAIN_KWORD
  | READ_KWORD
  | PRINT_KWORD
  | PRIVATE_KWORD
  | EXTENDS_KWORD
  | INTEGER_LITERAL of (int)
  | STRING_LITERAL of (string)
  | VAR_IDENTIFIER of (string)
  | CLASS_IDENTIFIER of (string)
  | NEWLINE
  | OPAREN
  | CPAREN
  | OBRACE
  | CBRACE
  | SEMICOLON
  | DOT
  | COMMA
  | COMMENT_LINE
  | COMMENT_OPEN
  | COMMENT_CLOSE
  | EOF

val input :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> MOOL_structs.mOOL_program
