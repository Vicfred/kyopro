{-# LANGUAGE TupleSections #-}
import Control.Monad ( replicateM_ )

readInput = do
    [n, m] <- map read . words <$> getLine
    (m, ) <$> (sequence $ replicate n getLine)

spyString :: (Int, [String]) -> String
spyString (m, (leader : members)) =
    case filter isSpy candidates of
        (spy : _) -> spy
        _         -> "-1"
    where
        isSpy cand = all ((< 2) . sum . map(fromEnum . uncurry (/=)) . zip cand) members
        candidates = concatMap gen (map (flip splitAt leader) [0..m-1])
        gen (l, r) = map ((l ++) . (: tail r)) ['a'..'z']

main = do
    t <- read <$> getLine
    replicateM_ t (spyString <$> readInput >>= putStrLn)

