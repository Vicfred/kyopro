-- vicfred
-- https://yukicoder.me/problems/no/3083
-- implementation
main :: IO ()
main = getLine >>= print . ceiling .(/2) .read
