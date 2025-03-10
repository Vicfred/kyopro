import Data.List (intercalate)

-- Generate the grid with the given rules
createGrid :: Int -> [[Char]]
createGrid n = foldl fillRegion initialGrid [1..n]
  where
    initialGrid = replicate (n + 1) (replicate (n + 1) '#')
    fillRegion grid i
      | i > j = grid
      | otherwise = [ [fillCell x y | y <- [0..n]] | x <- [0..n] ]
      where
        j = n + 1 - i
        fillCell x y
          | i <= x && x <= j && i <= y && y <= j = if odd i then '#' else '.'
          | otherwise = grid !! x !! y

-- Print the grid row by row
printGrid :: [[Char]] -> IO ()
printGrid grid = putStrLn $ intercalate "\n" [drop 1 row | row <- drop 1 grid]

main :: IO ()
main = do
    n <- readLn
    let grid = createGrid n
    printGrid grid
