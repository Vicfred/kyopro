-- uninhm
-- https://atcoder.jp/contests/abc237/tasks/abc237_a
-- implementation

import Data.Bool (bool)

main = getLine >>= putStrLn . bool "No" "Yes" . f . read
  where f n = -2^31 <= n && n <= 2^31 - 1
