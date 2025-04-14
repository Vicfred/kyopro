-- vicfred
-- https://atcoder.jp/contests/abc401/tasks/abc401_b
-- implementation
main :: IO ()
main = getContents >>= print . snd . foldl f (False, 0) . tail .  words

f :: (Bool, Int) -> String -> (Bool, Int)
f (_, counter) "login" = (True, counter)
f (_, counter) "logout" = (False, counter)
f (False, counter) "private" = (False, counter + 1)
f (flag, counter) _ = (flag, counter)
