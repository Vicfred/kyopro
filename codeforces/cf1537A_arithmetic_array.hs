import Control.Monad (replicateM_)

getInt = read <$> getLine
getInts = map read . words <$> getLine

main = do
  n <- getInt
  replicateM_ n $ do
    k <- getInt
    s <- sum <$> getInts
    if s < k then
      print 1
    else
      print $ s - k
