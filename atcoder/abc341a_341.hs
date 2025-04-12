-- vicfred
-- https://atcoder.jp/contests/abc341/tasks/abc341_a
-- implementation
main :: IO ()
main = getLine >>= putStrLn .(++) "1"
                            .concat
                            .flip replicate "01"
                            .(read @Int)
