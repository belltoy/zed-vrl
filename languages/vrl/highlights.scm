(comment) @comment

(null) @constant

(timestamp) @constant

(closure_variables
  (ident) @label)

(integer) @number

(float) @number

[
  (string)
  (raw_string)
] @string

[
  (raw_string_escape_sequence)
  (escape_sequence)
  (regex_escape_sequence)
] @string.escape

(string_template
  "{{" @punctuation.special
  (_)
  "}}" @punctuation.special)

(regex) @string.regex

(boolean) @boolean

(ident) @variable

(noop) @variable.special

(function_call
  (ident) @function)

; VRL queries
(query
  [
    (event)
    (metadata)
  ] @variable.special)

(query
  (path
    [
      (field) @variable
      (string) @string
      (index) @number
      "." @punctuation.delimiter
    ]))

"return" @keyword

"abort" @keyword

[
  "if"
  "else"
] @keyword

[
  "="
  "=="
  "!="
  "|="
  ">"
  ">="
  "<"
  "<="
  "+"
  "-"
  "*"
  "/"
  "&&"
  "||"
  "??"
  "|"
  "!"
] @operator

[
  "->"
  ":"
  ";"
  ","
] @punctuation.delimiter

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

(closure_variables
  "|" @punctuation.bracket)

(function_call
  (ident) @keyword
  "!"
  (#any-of? @keyword "assert" "assert_eq"))
