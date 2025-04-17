-- vicfred
-- https://atcoder.jp/contests/abc169/tasks/abc169_a
-- implementation
main :: IO ()
main = getLine >>= print . product . map read . words

