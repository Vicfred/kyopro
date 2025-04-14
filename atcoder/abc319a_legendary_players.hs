-- vicfred
-- https://atcoder.jp/contests/abc319/tasks/abc319_a
-- implementation
import Control.Monad (replicateM)
import Data.Maybe (fromMaybe)

main :: IO ()
main = do
  let players  = [ ("tourist",   3858)
                  , ("ksun48",    3679)
                  , ("Benq",      3658)
                  , ("Um_nik",    3648)
                  , ("apiad",     3638)
                  , ("Stonefeang",3630)
                  , ("ecnerwala", 3613)
                  , ("mnbvmar",   3555)
                  , ("newbiedmy", 3516)
                  , ("semiexp",   3481)
                  ]
  s <- getLine
  print . fromMaybe 0 . lookup s $ players
