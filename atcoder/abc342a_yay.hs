-- vicfred
-- https://atcoder.jp/contests/abc342/tasks/abc342_a
-- implementation
import Data.List (maximumBy, group, sort)

main :: IO ()
main = getLine >>= print . f

f :: String -> Int
f s = (+1) . length . takeWhile (== commonChar) $ s
  where
    commonChar = head . maximumBy (\a b -> compare (length a) (length b)) . group . sort $ s
