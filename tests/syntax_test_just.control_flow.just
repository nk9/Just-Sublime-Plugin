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

# Chained single-line if statement
abc := if "a" == "a" {"yes"} else { if "b" != "b" { "c"} else if "d" == "d" {"e"} else {"f"}}
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.if.just
#                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.if.just
#                                                        ^^^^ keyword.control.conditional.else.just
#                                                             ^^ keyword.control.conditional.if.just

# Confirm that the if has ended
baz:
#<- meta.function.parameters.just meta.function.just entity.name.function.just
  echo "hi"

# Chained, multiline if statement
foo := if "hello" == "goodbye" {
  "xyz"
} else if "a" == "a" {
#^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.if.just
#      ^^ keyword.control.conditional.if.just
#                    ^ punctuation.section.block.begin.just
  "abc"
} else {
# ^^^^ meta.statement.conditional.if.just keyword.control.conditional.else.just
  "123"
}

# Confirm that the if has ended
bar:
#<- meta.function.parameters.just meta.function.just entity.name.function.just
  @echo {{foo}}
