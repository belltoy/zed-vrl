((comment) @content
  (#set! "language" "comment"))

((regex) @content
  (#offset! @content 0 2 0 -1)
  (#set! "language" "regex"))
