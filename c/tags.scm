(struct_specifier name: (type_identifier) @name body:(_)) @definition.class

(declaration type: (union_specifier name: (type_identifier) @name)) @definition.class

(function_declarator declarator: (identifier) @name) @definition.function

(type_definition declarator: (type_identifier) @name) @definition.type

(enum_specifier name: (type_identifier) @name) @definition.type

; --- grove curated additions ---
; file-scope variable/array definitions (upstream tags omit these).
; covers plain/init/array and pointer (incl. pointer-array, e.g. dispatch tables
; like `static const struct be *registry[]`) declarators at translation-unit scope.
(translation_unit
  (declaration declarator: (identifier) @name) @definition.variable)

(translation_unit
  (declaration declarator: (init_declarator declarator: (identifier) @name)) @definition.variable)

(translation_unit
  (declaration declarator: (array_declarator declarator: (identifier) @name)) @definition.variable)

(translation_unit
  (declaration declarator: (init_declarator declarator: (array_declarator declarator: (identifier) @name))) @definition.variable)

(translation_unit
  (declaration declarator: (pointer_declarator declarator: (identifier) @name)) @definition.variable)

(translation_unit
  (declaration declarator: (pointer_declarator declarator: (array_declarator declarator: (identifier) @name))) @definition.variable)

(translation_unit
  (declaration declarator: (init_declarator declarator: (pointer_declarator declarator: (identifier) @name))) @definition.variable)

(translation_unit
  (declaration declarator: (init_declarator declarator: (pointer_declarator declarator: (array_declarator declarator: (identifier) @name)))) @definition.variable)

; call sites (upstream C tags have no reference rules, so `callers` finds nothing).
(call_expression
  function: (identifier) @name) @reference.call

(call_expression
  function: (field_expression field: (field_identifier) @name)) @reference.call
