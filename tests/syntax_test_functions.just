# SYNTAX TEST "Packages/Just-Sublime-Plugin/just.sublime-syntax"

an_arch := trim(lowercase(justfile())) + arch()
#          ^^^^ meta.group.just entity.name.function.just
#              ^ meta.group.just punctuation.section.parens.begin.just
#               ^^^^^^^^^ meta.group.just entity.name.function.just
#                         ^^^^^^^^ meta.group.just entity.name.function.just
#                                      ^ keyword.operator.arithmetic.just
#                                        ^^^^ entity.name.function.just

trim_end := trim_end("99.99954%   ")
#           ^^^^^^^^ meta.group.just entity.name.function.just
#                   ^ meta.group.just punctuation.section.parens.begin.just
#                    ^^^^^^^^^^^^^^ string.quoted.double.just
#                                  ^ meta.group.just punctuation.section.parens.end.just

home_dir := replace(env_var('HOME') / "yep", 'yep', '')
#           ^^^^^^^ meta.group.just entity.name.function.just
#                   ^^^^^^^ meta.group.just entity.name.function.just
#                                   ^ keyword.operator.arithmetic.just

quoted := quote("some things beyond\"$()^%#@!|-+=_*&'`")
#         ^^^^^ meta.group.just entity.name.function.just
#              ^ meta.group.just punctuation.section.parens.begin.just
#               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.just
#                                  ^^ constant.character.escape.just

smartphone := trim_end_match('blah.txt', 'txt')
#             ^^^^^^^^^^^^^^ meta.group.just entity.name.function.just

museum := trim_start_match(trim_start(trim_end_matches('   yep_blah.txt.txt', '.txt')), 'yep_')
#         ^^^^^^^^^^^^^^^^ meta.group.just entity.name.function.just
#                          ^^^^^^^^^^ meta.group.just entity.name.function.just
#                                     ^^^^^^^^^^^^^^^^ meta.group.just entity.name.function.just

water := trim_start_matches('ssssssoup.txt', 's')
#        ^^^^^^^^^^^^^^^^^^ meta.group.just entity.name.function.just

congress := uppercase(os())
#           ^^^^^^^^^ meta.group.just entity.name.function.just
#                    ^ meta.group.just punctuation.section.parens.begin.just
#                     ^^ meta.group.just entity.name.function.just
#                       ^ meta.group.just punctuation.section.parens.begin.just
#                        ^ meta.group.just punctuation.section.parens.end.just
#                         ^ meta.group.just punctuation.section.parens.end.just

fam := os_family()
#      ^^^^^^^^^ meta.group.just entity.name.function.just
#               ^ meta.group.just punctuation.section.parens.begin.just
#                ^ meta.group.just punctuation.section.parens.end.just

path_1 := absolute_path('test')
#         ^^^^^^^^^^^^^ meta.group.just entity.name.function.just

ext_z := extension(path_2)
#        ^^^^^^^^^ meta.group.just entity.name.function.just

exe_name := file_name(just_executable())
#           ^^^^^^^^^ meta.group.just entity.name.function.just
#                    ^ meta.group.just punctuation.section.parens.begin.just
#                     ^^^^^^^^^^^^^^^ meta.group.just entity.name.function.just
#                                    ^ meta.group.just punctuation.section.parens.begin.just
#                                     ^ meta.group.just punctuation.section.parens.end.just
#                                      ^ meta.group.just punctuation.section.parens.end.just

a_stem := file_stem(path_2)
#         ^^^^^^^^^ meta.group.just entity.name.function.just
#                  ^ meta.group.just punctuation.section.parens.begin.just
#                   ^^^^^^ meta.group.just variable.other.just
#                         ^ meta.group.just punctuation.section.parens.end.just

a_parent := parent_directory(path_2)
#           ^^^^^^^^^^^^^^^^ meta.group.just entity.name.function.just

sans_ext := without_extension(path_2)
#           ^^^^^^^^^^^^^^^^^ meta.group.just entity.name.function.just

camera := join('tmp', 'dir1', 'dir2', path_2)
#         ^^^^ meta.group.just entity.name.function.just
#             ^ meta.group.just punctuation.section.parens.begin.just
#              ^^^^^ string.quoted.single.just
#                   ^ punctuation.separator.sequence.just
#                     ^^^^^^ string.quoted.single.just
#                           ^ punctuation.separator.sequence.just
#                             ^^^^^^ string.quoted.single.just
#                                   ^ punctuation.separator.sequence.just
#                                     ^^^^^^ variable.other.just
#                                           ^ meta.group.just punctuation.section.parens.end.just

cleaned := clean('/tmp/blah/..///thing.txt')
#          ^^^^^ meta.group.just entity.name.function.just

id__path := '/tmp' / sha256('blah') / sha256_file(justfile())
#                    ^^^^^^ entity.name.function.just
#                           ^^^^^^ string.quoted.single.just
#                                   ^ keyword.operator.arithmetic.just
#                                     ^^^^^^^^^^^ entity.name.function.just
#                                                ^ punctuation.section.parens.begin.just
#                                                 ^^^^^^^^ entity.name.function.just
#                                                         ^ punctuation.section.parens.begin.just
#                                                          ^^ punctuation.section.parens.end.just

_another_var := env_var_or_default("HOME", justfile_directory())
#               ^^^^^^^^^^^^^^^^^^ meta.group.just entity.name.function.just
#                                 ^ meta.group.just punctuation.section.parens.begin.just
#                                  ^^^^^^ string.quoted.double.just
#                                        ^ punctuation.separator.sequence.just
#                                          ^^^^^^^^^^^^^^^^^^ entity.name.function.just
#                                                            ^ punctuation.section.parens.begin.just
#                                                             ^^ punctuation.section.parens.end.just

replaced := replace_regex("1alpha9", "\\d", "b")


#
# Change case
#

ALL_CAPS := capitalize("lower")
#           ^^^^^^^^^^ entity.name.function.just - group

kebab := kebabcase("test_me")
#        ^^^^^^^^^ entity.name.function.just

shoutykebab := shoutykebabcase("test_me")
#              ^^^^^^^^^^^^^^^ entity.name.function.just

snake := snakecase("test-me")
#        ^^^^^^^^^ entity.name.function.just

shoutysnake := shoutysnakecase("test-me")
#              ^^^^^^^^^^^^^^^ entity.name.function.just

uppercamel := uppercamelcase("test-me")
#             ^^^^^^^^^^^^^^ entity.name.function.just

lowercamel := lowercamelcase("test-me")
#             ^^^^^^^^^^^^^^ entity.name.function.just

lowercase := lowercase("TEST-ME")
#            ^^^^^^^^^ entity.name.function.just - group

title := titlecase("test me thanks")
#        ^^^^^^^^^ entity.name.function.just

upper := uppercase("test-me")
#        ^^^^^^^^^ entity.name.function.just - group
#                 ^ meta.group.just punctuation.section.parens.begin.just
#                  ^^^^^^^^^ string.quoted.double.just
#                           ^ meta.group.just punctuation.section.parens.end.just

