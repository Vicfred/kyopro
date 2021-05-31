; uninhm
; https://atcoder.jp/contests/abc122/tasks/abc122_a
; implementation

(

let
  ((b (read)))

(write-line (
  cond
    ((string-equal b "A") "T")
    ((string-equal b "T") "A")
    ((string-equal b "C") "G")
    ((string-equal b "G") "C")
))

)
