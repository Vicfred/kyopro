-- uninhm
-- https://atcoder.jp/contests/abc236/tasks/abc236_c
-- implementation

import Data.Set (Set)
import qualified Data.Set as Set

import Data.Bool (bool)

getWords :: IO [String]
getWords = words <$> getLine

solve :: [String] -> [String] -> String
solve s t = id
  . unlines
  . map (bool "No" "Yes" . stops)
  $ s
    where stops = flip Set.member (Set.fromList t)

main :: IO ()
main = getLine >> solve <$> getWords <*> getWords >>= putStr
