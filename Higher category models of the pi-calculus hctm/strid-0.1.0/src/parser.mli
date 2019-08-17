type token =
  | NEWCOL
  | NEWLINE
  | LBRACK
  | RBRACK
  | LPAR
  | RPAR
  | EQ
  | COMMA
  | EOF
  | LACC
  | RACC
  | LET
  | MATRIX
  | INCLUDE
  | STRING of (string)

val defs :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Lang.ir_matrix
