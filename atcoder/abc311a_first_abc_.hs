-- vicfred
-- https://atcoder.jp/contests/abc311/tasks/abc311_a
-- implementation
import Data.Set qualified as Set
main :: IO ()
main = do
  _ <- getLine
  s <- getLine
  print $ f s Set.empty 1

f :: String -> Set.Set Char -> Int -> Int
f [] _ _ = 0
f (x: xs) seen idx
  | Set.size newSeen == 3 = idx
  | otherwise = f xs newSeen (idx + 1)
  where
    newSeen = Set.insert x seen

