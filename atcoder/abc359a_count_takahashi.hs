-- vicfred
-- https://atcoder.jp/contests/abc359/tasks/abc359_a
-- implementation
main :: IO ()
main = interact $ (++"\n")
                  .show
                  .length
                  .filter (=="Takahashi")
                  .(drop 1)
                  .lines
