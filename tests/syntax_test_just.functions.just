# SYNTAX TEST "Packages/Just-Sublime-Plugin/just.sublime-syntax"

an_arch := trim(justfile()) + arch()
#          ^^^^ entity.name.function.just - group
#              ^ meta.group.just meta.function-call.arguments.just punctuation.section.arguments.begin.just
#               ^^^^^^^^ entity.name.function.just - group
#                           ^ keyword.operator.arithmetic.just
#                             ^^^^ entity.name.function.just - group

test := "yelaw"
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

# quoted := quote("some things beyond\"$()^%#@!|-+=_*&'`")
# #         ^^^^^ entity.name.function.just - group
# #              ^ meta.group.just punctuation.section.group.begin.just
# #               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.just
# #                                  ^^ constant.character.escape.just

# smartphone := trim_end_match('blah.txt', 'txt')
# #             ^^^^^^^^^^^^^^ entity.name.function.just - group

# museum := trim_start_match(trim_start(trim_end_matches('   yep_blah.txt.txt', '.txt')), 'yep_')
# #         ^^^^^^^^^^^^^^^^ entity.name.function.just - group
# #                          ^^^^^^^^^^ entity.name.function.just - group
# #                                     ^^^^^^^^^^^^^^^^ entity.name.function.just - group

# water := trim_start_matches('ssssssoup.txt', 's')
# #        ^^^^^^^^^^^^^^^^^^ entity.name.function.just - group

# myos := os()
# #       ^^ entity.name.function.just - group

# fam := os_family()
# #      ^^^^^^^^^ entity.name.function.just - group
# #               ^ meta.group.just punctuation.section.group.begin.just
# #                ^ meta.group.just punctuation.section.group.end.just

# path_1 := absolute_path('test')
# #         ^^^^^^^^^^^^^ entity.name.function.just - group

# ext_z := extension(path_2)
# #        ^^^^^^^^^ entity.name.function.just - group

# exe_name := file_name(just_executable())
# #           ^^^^^^^^^ entity.name.function.just - group
# #                    ^ meta.group.just punctuation.section.group.begin.just
# #                     ^^^^^^^^^^^^^^^ entity.name.function.just - group
# #                                    ^ meta.group.just punctuation.section.group.begin.just
# #                                     ^ meta.group.just punctuation.section.group.end.just
# #                                      ^ meta.group.just punctuation.section.group.end.just

# a_stem := file_stem(path_2)
# #         ^^^^^^^^^ entity.name.function.just - group
# #                  ^ meta.group.just punctuation.section.group.begin.just
# #                   ^^^^^^ meta.group.just variable.other.just
# #                         ^ meta.group.just punctuation.section.group.end.just

# a_parent := parent_directory(path_2)
# #           ^^^^^^^^^^^^^^^^ entity.name.function.just - group

# sans_ext := without_extension(path_2)
# #           ^^^^^^^^^^^^^^^^^ entity.name.function.just - group

# camera := join('tmp', 'dir1', 'dir2', path_2)
# #         ^^^^ entity.name.function.just - group
# #             ^ meta.group.just punctuation.section.group.begin.just
# #              ^^^^^ string.quoted.single.just
# #                   ^ punctuation.separator.sequence.just
# #                     ^^^^^^ string.quoted.single.just
# #                           ^ punctuation.separator.sequence.just
# #                             ^^^^^^ string.quoted.single.just
# #                                   ^ punctuation.separator.sequence.just
# #                                     ^^^^^^ variable.other.just
# #                                           ^ meta.group.just punctuation.section.group.end.just

# cleaned := clean('/tmp/blah/..///thing.txt')
# #          ^^^^^ entity.name.function.just - group

# id__path := '/tmp' / sha256('blah') / sha256_file(justfile())
# #                    ^^^^^^ entity.name.function.just
# #                           ^^^^^^ string.quoted.single.just
# #                                   ^ keyword.operator.arithmetic.just
# #                                     ^^^^^^^^^^^ entity.name.function.just
# #                                                ^ punctuation.section.group.begin.just
# #                                                 ^^^^^^^^ entity.name.function.just
# #                                                         ^ punctuation.section.group.begin.just
# #                                                          ^^ punctuation.section.group.end.just

# _another_var := env_var_or_default("HOME", justfile_directory())
# #               ^^^^^^^^^^^^^^^^^^ entity.name.function.just - group
# #                                 ^ meta.group.just punctuation.section.group.begin.just
# #                                  ^^^^^^ string.quoted.double.just
# #                                        ^ punctuation.separator.sequence.just
# #                                          ^^^^^^^^^^^^^^^^^^ entity.name.function.just
# #                                                            ^ punctuation.section.group.begin.just
# #                                                             ^^ punctuation.section.group.end.just

# replaced := replace_regex("1alpha9", "\\d", "b")


# #
# # Change case
# #

# ALL_CAPS := capitalize("lower")
# #           ^^^^^^^^^^ entity.name.function.just - group

# kebab := kebabcase("test_me")
# #        ^^^^^^^^^ entity.name.function.just

# shoutykebab := shoutykebabcase("test_me")
# #              ^^^^^^^^^^^^^^^ entity.name.function.just

# snake := snakecase("test-me")
# #        ^^^^^^^^^ entity.name.function.just

# shoutysnake := shoutysnakecase("test-me")
# #              ^^^^^^^^^^^^^^^ entity.name.function.just

# uppercamel := uppercamelcase("test-me")
# #             ^^^^^^^^^^^^^^ entity.name.function.just

# lowercamel := lowercamelcase("test-me")
# #             ^^^^^^^^^^^^^^ entity.name.function.just

# lowercase := lowercase("TEST-ME")
# #            ^^^^^^^^^ entity.name.function.just - group

# title := titlecase("test me thanks")
# #        ^^^^^^^^^ entity.name.function.just

# upper := uppercase("test-me")
# #        ^^^^^^^^^ entity.name.function.just - group
# #                 ^ meta.group.just punctuation.section.group.begin.just
# #                  ^^^^^^^^^ string.quoted.double.just
# #                           ^ meta.group.just punctuation.section.group.end.just

