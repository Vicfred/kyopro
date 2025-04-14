-- vicfred
-- https://atcoder.jp/contests/abc324/tasks/abc324_a
-- implementation
import Data.List (group)
import Data.Bool (bool)

main :: IO ()
main = getContents >>= putStrLn .bool "No" "Yes".(== 1)
                                .length
                                .group
                                .words
                                .last
                                .lines
