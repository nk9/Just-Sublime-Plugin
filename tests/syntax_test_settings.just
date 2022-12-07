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

set positional-arguments
#   ^^^^^^^^^^^^^^^^^^^^ entity.other.attribute-name.just

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
