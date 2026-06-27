; Scopes
;-------

[
  (statement_block)
  (function_expression)
  (arrow_function)
  (function_declaration)
  (method_definition)
] @local.scope

; Definitions
;------------


(variable_declarator
  name: (identifier) @local.definition)

; References
;------------

(identifier) @local.reference
