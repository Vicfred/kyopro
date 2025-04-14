-- vicfred
-- https://atcoder.jp/contests/abc401/tasks/abc401_a
-- implementation
main :: IO ()
main = getLine >>= putStrLn . (\x -> if x >= 200 && x < 300 then "Success" else "Failure") . read
