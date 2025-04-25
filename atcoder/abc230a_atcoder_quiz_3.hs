-- vicfred
-- https://atcoder.jp/contests/abc230/tasks/abc230_a
-- implementation
main :: IO ()
main = getLine >>= putStrLn .(\s -> "AGC" ++ (replicate (3 - length s) '0') ++ s)
                            .show
                            .(\x -> if x >= 42 then x + 1 else x)
                            .read
