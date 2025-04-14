-- vicfred
-- https://atcoder.jp/contests/abc346/tasks/abc346_a
-- implementation
main :: IO ()
main = getContents >>= putStrLn .unwords
                                .map show
                                .(\x -> zipWith (*) x (tail x))
                                .map read
                                .words
                                .head
                                .drop 1
                                .lines
