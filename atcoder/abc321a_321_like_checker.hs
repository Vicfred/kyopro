-- vicfred
-- https://atcoder.jp/contests/abc321/tasks/abc321_a
-- implementation
import Control.Applicative (liftA2)
import Data.Char (digitToInt)
import Data.Bool (bool)

main :: IO ()
main = map digitToInt <$> getLine >>= putStrLn .bool "No" "Yes"
                                               .all (== True)
                                               .liftA2 (zipWith (>)) id tail
