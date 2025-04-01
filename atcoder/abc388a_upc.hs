-- vicfred
-- https://atcoder.jp/contests/abc388/tasks/abc388_a
-- implementation
main :: IO ()
main = getLine >>= putStrLn . (:"UPC") . head
