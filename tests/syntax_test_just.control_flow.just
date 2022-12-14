# SYNTAX TEST "Packages/Just-Sublime-Plugin/just.sublime-syntax"

var := if "a" != "a" {"ne"} else {"eq"}
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.if.just
#^^ variable.other.just
#   ^^ keyword.operator.assignment.just
#      ^^ keyword.control.conditional.if.just
#         ^^^ string.quoted.double.just
#             ^^  keyword.operator.comparison.just
#                ^^^ string.quoted.double.just
#                    ^ punctuation.section.block.begin.just
#                     ^^^^ string.quoted.double.just
#                         ^ punctuation.section.block.end.just
#                           ^^^^ keyword.control.conditional.else.just
#                                ^ punctuation.section.block.begin.just
#                                 ^^^^ string.quoted.double.just
#                                     ^ punctuation.section.block.end.just

# Nested if statements
var := if "b" == "a" {if "c" == "d" {"w"} else {"x"}} else {if "e" != "f" {"y"} else {"z"}}
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.if.just
#                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.if.just meta.statement.conditional.if.just
#                     ^^ keyword.control.conditional.if.just
#                        ^^^ string.quoted.double.just
#                            ^^ keyword.operator.comparison.just
#                               ^^^ string.quoted.double.just
#                                   ^ punctuation.section.block.begin.just
#                                    ^^^ string.quoted.double.just
#                                       ^ punctuation.section.block.end.just
#                                         ^^^^ keyword.control.conditional.else.just
#                                              ^ punctuation.section.block.begin.just
#                                               ^^^ string.quoted.double.just
#                                                  ^ punctuation.section.block.end.just
#                                                   ^ punctuation.section.block.end.just
#                                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.if.just meta.statement.conditional.if.just
#                                                           ^^ keyword.control.conditional.if.just
#                                                              ^^^ string.quoted.double.just
#                                                                  ^^ keyword.operator.comparison.just
#                                                                     ^^^ string.quoted.double.just
#                                                                         ^ punctuation.section.block.begin.just
#                                                                          ^^^ string.quoted.double.just
#                                                                             ^ punctuation.section.block.end.just
#                                                                               ^^^^ keyword.control.conditional.else.just
#                                                                                    ^ punctuation.section.block.begin.just
#                                                                                     ^^^ string.quoted.double.just
#                                                                                        ^ punctuation.section.block.end.just 
