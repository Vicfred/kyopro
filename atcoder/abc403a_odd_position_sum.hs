-- vicfred
-- https://atcoder.jp/contests/abc403/tasks/abc403_a
-- implementation
main :: IO ()
main = getLine >> getLine >>= print .sum
                                    .(\xs -> [x | (i, x) <- zip [1..] xs, odd i])
                                    .map read
                                    .words
