# SYNTAX TEST "Packages/Just-Sublime-Plugin/just.sublime-syntax"

#
# Boolean settings
#

set allow-duplicate-recipes
# <- support.function.export.just
#   ^^^^^^^^^^^^^^^^^^^^^^^ entity.other.attribute-name.just

set dotenv-load := true
#   ^^^^^^^^^^^ entity.other.attribute-name.just
#               ^^ keyword.operator.assignment.just
#                  ^^^^ constant.language.boolean.just

set export
#   ^^^^^^ entity.other.attribute-name.just

set fallback
#   ^^^^^^^^ entity.other.attribute-name.just

set ignore-comments
#   ^^^^^^^^^^^^^^^ entity.other.attribute-name.just

# Sequential set
set ignore-comments := true
set ignore-comments := false
#<- support.function.export.just
#^^ support.function.export.just
#   ^^^^^^^^^^^^^^^ entity.other.attribute-name.just -group
#                   ^^ keyword.operator.assignment.just
#                      ^^^^^ constant.language.boolean.just

set positional-arguments
#   ^^^^^^^^^^^^^^^^^^^^ entity.other.attribute-name.just

set tempdir := '/tmp/just'
#   ^^^^^^^ entity.other.attribute-name.just - group
#           ^^ keyword.operator.assignment.just
#              ^^^^^^^^^^^ string.quoted.single.just

set windows-powershell
#   ^^^^^^^^^^^^^^^^^^ entity.other.attribute-name.just


#
# Shell settings
#

set shell := ["sh", "-c"]
#   ^^^^^ entity.other.attribute-name.just
#         ^^ keyword.operator.assignment.just
#            ^ punctuation.section.brackets.start.just
#             ^^^^ string.quoted.double.just
#                 ^ punctuation.separator.parameters.just
#                   ^^^^ string.quoted.double.just
#                       ^ punctuation.section.brackets.end.just

set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]
#   ^^^^^^^^^^^^^ entity.other.attribute-name.just
#                 ^^ keyword.operator.assignment.just

set windows-powershell := true
#^^ support.function.export.just
#   ^^^^^^^^^^^^^^^^^^ entity.other.attribute-name.just
#                      ^^ keyword.operator.assignment.just
#                         ^^^^ constant.language.boolean.just
