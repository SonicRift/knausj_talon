mode: command
and mode: user.javascript
mode: command
and mode: user.auto_lang
# and code.language: javascript
-
tag(): user.code_operators
tag(): user.code_comment
tag(): user.code_generic

settings():
    user.code_private_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_private_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_variable_formatter = "PRIVATE_CAMEL_CASE"

block: "{}"

state block:
  insert("{}")
  key(left enter)

state more block:
  insert(" {}")
  key(left enter)

state if:
  insert("if ()")
  key(left)

state while:
  insert("while ()")
  key(left)

state for:
  insert("for ()")
  key(left)

state switch:
  insert("switch ()")
  key(left)

state case: "case :"
state import: "import "
state class: "class "
state else:
  insert(" else {}")
  key(left enter)

lambda: user.code_operator_lambda()

trickle: " === "
state not equal: " !== "

state const : "const "
^state const <user.text>$:
  insert("const ")
  insert(user.text)

state let: "let "
^state let <user.text>$:
  insert("let ")
  insert(user.text)

^state return <user.text>$:
  insert("return ")
  insert(user.text)

state (var | variable): "var "
^state variable <user.text>$:
  insert("var ")
  insert(user.text)

state async: "async "

state await: "await "
state no: "null"

state map:
    insert(".map()")
    key(left)

state for each:
  insert(".forEach()")
  key(left)

state filter:
    insert(".filter()")
    key(left)

state reduce:
    insert(".reduce()")
    key(left)

state spread: "..."

^funky <user.text>$: user.code_default_function(text)
^pro funky <user.text>$: user.code_protected_function(text)
^pub funky <user.text>$: user.code_public_function(text)
