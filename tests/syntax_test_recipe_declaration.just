# SYNTAX TEST "Packages/Just-Sublime-Plugin/just.sublime-syntax"

for:
# <- meta.function-call.just entity.name.function.just
#^^ meta.function-call.just entity.name.function.just
#  ^ keyword.operator.assignment.just
  for file in `ls .`; do \
    echo $file; \
  done

_bar2 foo_stuff:
# <- meta.function-call.arguments.just entity.name.function.just
#^^^^ meta.function-call.arguments.just entity.name.function.just
#     ^^^^^^^^^ meta.function-call.arguments.just variable.parameter.just
#              ^ keyword.operator.assignment.just
  @echo {{ if foo_stuff == "bar" { "hello" } else { "goodbye" } }}
# ^ storage.modifier.just

a:
  echo 'A!'

b: a && d
# <- meta.function-call.arguments.just entity.name.function.just
#^ keyword.operator.assignment.just
#  ^ entity.name.function.just
#    ^^ keyword.operator.subsequent-marker.just
#       ^ entity.name.function.just 
  echo 'B start!'
  just -f {{justfile()}} c
  echo 'B end!'

c:
  echo 'C!'

d:
  echo 'D!'

test3 target tests=path_1:
# <- meta.function-call.just entity.name.function.just
#^^^^ meta.function-call.just entity.name.function.just
#     ^^^^^^ meta.function-call.arguments.just variable.parameter.just
#            ^^^^^ meta.function-call.arguments.just variable.parameter.just
#                 ^ meta.function-call.arguments.just keyword.operator.just
#                  ^^^^^^ meta.function-call.arguments.just variable.other.just
#                        ^ keyword.operator.assignment.just
  @echo 'Testing {{target}}:{{tests}}…'
  ./test --tests {{tests}} {{target}}

test4 triple=(an_arch + "-unknown-unknown") input=(an_arch / "input.dat"):
#<- meta.function-call.just entity.name.function.just
#^^^^ meta.function-call.just entity.name.function.just
#     ^^^^^^ meta.function-call.arguments.just variable.parameter.just
#           ^ meta.function-call.arguments.just keyword.operator.assignment.just
#            ^ meta.function-call.arguments.just meta.group.just punctuation.section.parens.begin.just
#             ^^^^^^^ variable.other.just
#                     ^ keyword.operator.arithmetic.just
#                       ^^^^^^^^^^^^^^^^^^ string.quoted.double.just
#                                         ^ meta.group.just punctuation.section.parens.end.just
#                                           ^^^^^ meta.function-call.arguments.just variable.parameter.just
#                                                ^ meta.function-call.arguments.just keyword.operator.assignment.just
#                                                 ^ meta.group.just punctuation.section.parens.start.just
#                                                  ^^^^^^^ variable.other.just
#                                                          ^ keyword.operator.arithmetic.just
#                                                            ^^^^^^^^^^^ string.quoted.double.just
#                                                                       ^ meta.group.just punctuation.section.parens.end.just
#                                                                        ^ keyword.operator.assignment.just
  ./test {{triple}}

variadic $VAR1_1 VAR2 VAR3 VAR4=("a") +$FLAGS='-q': foo2 braces
#        ^ meta.function-call.arguments.just keyword.operator.exported.just
#         ^^^^^^ meta.function-call.arguments.just variable.parameter.just
#                ^^^^ meta.function-call.arguments.just variable.parameter.just
#                     ^^^^ meta.function-call.arguments.just variable.parameter.just
#                          ^^^^ meta.function-call.arguments.just variable.parameter.just
#                              ^ meta.function-call.arguments.just keyword.operator.assignment.just
#                               ^ meta.function-call.arguments.just meta.group.just punctuation.section.parens.start.just
#                                ^^^ string.quoted.double.just
#                                   ^ meta.function-call.arguments.just meta.group.just punctuation.section.parens.end.just
#                                     ^ meta.function-call.arguments.just keyword.operator.variadic.just
#                                      ^ meta.function-call.arguments.just keyword.operator.exported.just
#                                       ^^^^^ meta.function-call.arguments.just variable.parameter.just
#                                            ^ meta.function-call.arguments.just keyword.operator.assignment.just
#                                             ^^^^ string.quoted.single.just
#                                                 ^ keyword.operator.assignment.just
#                                                   ^^^^ meta.function-call.dependency.just entity.name.function.just
#                                                        ^^^^^^ meta.function-call.dependency.just entity.name.function.just
  cargo test {{FLAGS}}

script2 *ARGS:
#^^^^^^ meta.function-call.just entity.name.function.just
#       ^ meta.function-call.arguments.just keyword.operator.variadic.just
#        ^^^^ meta.function-call.arguments.just variable.parameter.just
#            ^ keyword.operator.assignment.just
    {{ python }} script2.py {{ ARGS }}


#
# Recipe dependencies
#
target := "main"
_build version:
    @echo 'Building {{version}}…'
    cd {{version}} && make

# Argument to dependency
build: (_build target)
#^^^^ meta.function-call.arguments.just entity.name.function.just
#    ^ keyword.operator.assignment.just
#      ^ punctuation.section.parens.start.just
#       ^^^^^^ entity.name.function.just
#              ^^^^^^ meta.function-call.arguments.just variable.parameter.just
#                    ^ punctuation.section.parens.end.just


#
# Recipe attributes
#

[no-cd]
#^^^^^^ meta.annotation.just variable.annotation.just
no-cd-attr:
    echo "no-cd"

[no-exit-message]
#^^^^^^^^^^^^^^^^ meta.annotation.just variable.annotation.just
no-exit-message-attr:
    echo "recipe with no exit message"

[linux]
#^^^^^^ meta.annotation.just variable.annotation.just
linux-attr:
    echo "linux recipe"

[  macos  ]
#^^^^^^^^^^ meta.annotation.just variable.annotation.just
macos-attr:
    echo "macos recipe"

[private]
#^^^^^^^^ meta.annotation.just variable.annotation.just
private-attr:
    echo "private recipe"

[unix   ]
#^^^^^^^^ meta.annotation.just variable.annotation.just
unix-attr:
    echo "unix recipe"

[  windows]
#^^^^^^^^^^ meta.annotation.just variable.annotation.just
windows-attr:
    echo "windows recipe"
