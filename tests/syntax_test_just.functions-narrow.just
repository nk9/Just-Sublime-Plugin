# SYNTAX TEST "Packages/Just-Sublime-Plugin/just-narrow.sublime-syntax"

an_arch := trim(justfile()) + arch()
#          ^^^^ entity.name.function.just - group
#              ^ meta.group.just meta.function-call.arguments.just punctuation.section.arguments.begin.just
#               ^^^^^^^^ entity.name.function.just - group
#                           ^ keyword.operator.arithmetic.just
#                             ^^^^ entity.name.function.just - group

export test := "yelaw"
abc := "hello"
apath := justfile()
s := replace      ((test + abc + replace((apath), "/", "_")), "l", "g")
#                 ^ meta.function-call.arguments.just punctuation.section.arguments.begin.just
#                  ^ punctuation.section.group.begin.just
#                   ^^^^ meta.group.just variable.other.just
#                        ^ keyword.operator.arithmetic.just
#                          ^^^ meta.group.just variable.other.just
#                              ^ keyword.operator.arithmetic.just
#                                ^^^^^^^ meta.function-call.arguments.just entity.name.function.just
#                                       ^ meta.function-call.arguments.just punctuation.section.arguments.begin.just
#                                        ^ punctuation.section.group.begin.just
#                                         ^^^^^ meta.group.just variable.other.just
#                                              ^ punctuation.group.parens.end.just
#                                               ^ punctuation.separator.sequence.just
#                                                 ^^^ string.quoted.double.just
#                                                    ^ punctuation.separator.sequence.just
#                                                      ^^^ string.quoted.double.just
#                                                         ^ punctuation.section.group.end.just
#                                                          ^ punctuation.group.parens.end.just
#                                                           ^ punctuation.separator.sequence.just
#                                                             ^^^ string.quoted.double.just
#                                                                ^ punctuation.separator.sequence.just
#                                                                  ^^^ string.quoted.double.just
#                                                                     ^ punctuation.section.group.end.just

trim_end := trim_end("99.99954%   ")
#           ^^^^^^^^ entity.name.function.just - group
#                   ^ meta.function-call.arguments.just punctuation.section.arguments.begin.just - group
#                    ^^^^^^^^^^^^^^ string.quoted.double.just
#                                  ^ meta.function-call.arguments.just punctuation.section.arguments.end.just - group

home_dir := replace(env_var('HOME') / "yep", 'yep', '')
#           ^^^^^^^ entity.name.function.just - group
#                   ^^^^^^^ entity.name.function.just - group
#                                   ^ keyword.operator.arithmetic.just
#                                                     ^ meta.group.just punctuation.section.group.end.just

