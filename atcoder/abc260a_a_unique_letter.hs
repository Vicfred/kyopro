-- vicfred
-- https://atcoder.jp/contests/abc260/tasks/abc260_a
-- implementation
import Data.List (group, sort)
import Data.Bool (bool)

main :: IO ()
main = do
  s <- getLine :: IO String
  let x = filter ((==1) . length) . group . sort $ s
  putStrLn $ if x /= [] then head x else "-1"
