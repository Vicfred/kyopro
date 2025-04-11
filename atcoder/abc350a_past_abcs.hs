-- vicfred
-- https://atcoder.jp/contests/abc350/tasks/abc350_a
-- implementation
import Data.List ((\\))

main :: IO ()
main = do
  let constest = ((++) <$> ["ABC"] <*> [replicate (3 - length (show n)) '0' ++ show n | n <- [1..349]]) \\ ["ABC316"]
  s <- getLine
  if s `elem` constest then putStrLn "Yes" else putStrLn "No"
