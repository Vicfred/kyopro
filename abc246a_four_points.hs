import Control.Monad (replicateM)
import Data.List
-- vicfred
-- https://atcoder.jp/contests/abc246/editorial/3714
-- implementation, math
main :: IO ()
main = do
  xys <- replicateM 3 $ map read . words <$> getLine :: IO [[Int]]
  putStrLn . unwords . map (show . head) $ concatMap (filter ((== 1) . length) . group . sort) $ transpose xys
