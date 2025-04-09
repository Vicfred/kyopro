-- vicfred
-- https://atcoder.jp/contests/abc373/tasks/abc373_a
-- implementation
main :: IO ()
main = interact $ (++ "\n")
                  .show
                  .length
                  .filter id
                  .zipWith (\x y -> x == length y) [1..12]
                  .lines
