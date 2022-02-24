;; uninhm
;; https://atcoder.jp/contests/abc188/tasks/abc188_a
;; implementation

(let ((x (read))
      (y (read)))
  (write-line
    (if (< 3 (abs (- x y)))
        "Yes"
        "No")))
