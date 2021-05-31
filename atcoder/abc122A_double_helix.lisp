; uninhm
; https://atcoder.jp/contests/abc122/tasks/abc122_a
; implementation

(

let
  ((b (read)))

(cond
  ((string-equal b "A") (write-line "T"))
  ((string-equal b "T") (write-line "A"))
  ((string-equal b "C") (write-line "G"))
  ((string-equal b "G") (write-line "C"))
)

)
