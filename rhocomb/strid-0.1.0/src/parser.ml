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

open Parsing;;
# 2 "parser.mly"
(*
 * Copyright (C) 2006 Samuel Mimram
 *
 * This file is part of strid.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 *)

    open Lang
# 42 "parser.ml"
let yytransl_const = [|
  257 (* NEWCOL *);
  258 (* NEWLINE *);
  259 (* LBRACK *);
  260 (* RBRACK *);
  261 (* LPAR *);
  262 (* RPAR *);
  263 (* EQ *);
  264 (* COMMA *);
    0 (* EOF *);
  265 (* LACC *);
  266 (* RACC *);
  267 (* LET *);
  268 (* MATRIX *);
  269 (* INCLUDE *);
    0|]

let yytransl_block = [|
  270 (* STRING *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\003\000\003\000\004\000\004\000\004\000\004\000\
\005\000\006\000\006\000\008\000\008\000\007\000\007\000\009\000\
\009\000\000\000"

let yylen = "\002\000\
\001\000\005\000\002\000\000\000\003\000\002\000\002\000\001\000\
\005\000\003\000\001\000\001\000\000\000\005\000\000\000\005\000\
\000\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\018\000\001\000\000\000\000\000\008\000\
\000\000\000\000\000\000\000\000\006\000\000\000\000\000\003\000\
\000\000\007\000\012\000\000\000\000\000\002\000\005\000\000\000\
\000\000\000\000\009\000\010\000\000\000\000\000\000\000\000\000\
\000\000\000\000\014\000\000\000\016\000"

let yydgoto = "\002\000\
\004\000\005\000\010\000\011\000\012\000\020\000\027\000\021\000\
\031\000"

let yysindex = "\003\000\
\254\254\000\000\002\255\000\000\000\000\255\254\255\254\000\000\
\009\255\006\255\255\254\005\255\000\000\001\255\017\000\000\000\
\255\254\000\000\000\000\012\255\011\255\000\000\000\000\017\255\
\001\255\008\255\000\000\000\000\013\255\010\255\019\255\018\255\
\017\255\014\255\000\000\013\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\016\255\000\000\000\000\
\000\000\000\000\016\255\000\000\000\000\253\254\000\000\000\000\
\000\000\000\000\000\000\000\000\021\255\000\000\000\000\007\255\
\253\254\000\000\000\000\000\000\025\255\000\000\000\000\000\000\
\007\255\000\000\000\000\025\255\000\000"

let yygindex = "\000\000\
\000\000\000\000\019\000\251\255\000\000\006\000\255\255\000\000\
\253\255"

let yytablesize = 33
let yytable = "\007\000\
\008\000\013\000\013\000\001\000\013\000\017\000\018\000\015\000\
\015\000\003\000\006\000\023\000\009\000\014\000\019\000\015\000\
\022\000\024\000\025\000\026\000\030\000\029\000\033\000\032\000\
\034\000\004\000\011\000\036\000\017\000\016\000\028\000\035\000\
\037\000"

let yycheck = "\001\001\
\002\001\007\000\006\001\001\000\008\001\001\001\002\001\001\001\
\002\001\012\001\009\001\017\000\014\001\005\001\014\001\010\001\
\000\000\006\001\008\001\003\001\008\001\014\001\004\001\014\001\
\007\001\010\001\006\001\014\001\004\001\011\000\025\000\033\000\
\036\000"

let yynames_const = "\
  NEWCOL\000\
  NEWLINE\000\
  LBRACK\000\
  RBRACK\000\
  LPAR\000\
  RPAR\000\
  EQ\000\
  COMMA\000\
  EOF\000\
  LACC\000\
  RACC\000\
  LET\000\
  MATRIX\000\
  INCLUDE\000\
  "

let yynames_block = "\
  STRING\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'matrix) in
    Obj.repr(
# 34 "parser.mly"
             ( _1 )
# 146 "parser.ml"
               : Lang.ir_matrix))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'matrix_lines) in
    Obj.repr(
# 37 "parser.mly"
                                        ( _3 )
# 153 "parser.ml"
               : 'matrix))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'line) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'matrix_lines) in
    Obj.repr(
# 41 "parser.mly"
                        ( _1::_2 )
# 161 "parser.ml"
               : 'matrix_lines))
; (fun __caml_parser_env ->
    Obj.repr(
# 42 "parser.mly"
      ( [] )
# 167 "parser.ml"
               : 'matrix_lines))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'box) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'line) in
    Obj.repr(
# 46 "parser.mly"
                      ( (Some _1)::_3 )
# 175 "parser.ml"
               : 'line))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'line) in
    Obj.repr(
# 47 "parser.mly"
                  ( None::_2 )
# 182 "parser.ml"
               : 'line))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'box) in
    Obj.repr(
# 48 "parser.mly"
                  ( [Some _1] )
# 189 "parser.ml"
               : 'line))
; (fun __caml_parser_env ->
    Obj.repr(
# 49 "parser.mly"
              ( [None] )
# 195 "parser.ml"
               : 'line))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'directions) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'options) in
    Obj.repr(
# 53 "parser.mly"
                                          ( new box _1 _3 _5 )
# 204 "parser.ml"
               : 'box))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'dir) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'directions) in
    Obj.repr(
# 57 "parser.mly"
                           ( _1::_3 )
# 212 "parser.ml"
               : 'directions))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'dir) in
    Obj.repr(
# 58 "parser.mly"
          ( [_1] )
# 219 "parser.ml"
               : 'directions))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 62 "parser.mly"
             ( reldir_of_string _1 )
# 226 "parser.ml"
               : 'dir))
; (fun __caml_parser_env ->
    Obj.repr(
# 63 "parser.mly"
      ( reldir_of_string "" )
# 232 "parser.ml"
               : 'dir))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'option_val) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'options) in
    Obj.repr(
# 67 "parser.mly"
                                              ( (_2, _3)::_5 )
# 241 "parser.ml"
               : 'options))
; (fun __caml_parser_env ->
    Obj.repr(
# 68 "parser.mly"
      ( [] )
# 247 "parser.ml"
               : 'options))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'option_val) in
    Obj.repr(
# 72 "parser.mly"
                                        ( (_2, _4)::_5 )
# 256 "parser.ml"
               : 'option_val))
; (fun __caml_parser_env ->
    Obj.repr(
# 73 "parser.mly"
      ( [] )
# 262 "parser.ml"
               : 'option_val))
(* Entry defs *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let defs (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Lang.ir_matrix)
