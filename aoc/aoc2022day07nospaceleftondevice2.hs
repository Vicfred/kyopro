-- uninhm
-- https://adventofcode.com/2022/day/7#part2
-- implementation, associative array

import qualified Data.Map.Strict as Map
import Data.Map.Strict (Map)
import Data.Either (isRight)
import System.Process (CreateProcess(cmdspec))

data LsLine = Dir String | File Int String deriving (Show)
data Command = List [LsLine] | ChangeDir String deriving (Show)
type Path = [String]

parse :: String -> [Command]
parse = go . map parseLine . lines where
  fromRight (Right x) = x
  go [] = []
  go (Left (List _) : lns) =
    List (map fromRight $ takeWhile isRight lns) : go (dropWhile isRight lns)
  go ((Left cd) : lns) = cd : go lns
  go ((Right _) : _) = error "invalid input"
  parseLine ln = case words ln of
    ["$", "cd", dirname] -> Left  $ ChangeDir dirname
    ["$", "ls"]          -> Left  $ List []
    ["dir", dirname]     -> Right $ Dir dirname
    [x, filename]        -> Right $ File (read x) filename

addFile :: Path -> LsLine -> Map Path Int -> Map Path Int
addFile [] _ m = m
addFile path f@(File sz _) m = addFile (tail path) f $ Map.insertWith (+) path sz m
addFile _ _ m = m

solve :: [Command] -> Int
solve cmds = minimum $ filter (>= neededSpace) $ Map.elems sizesMap where
  neededSpace = 30000000 - 70000000 + (sizesMap Map.! ["/"])
  sizesMap = go [] Map.empty cmds
  go current m ((ChangeDir dirname):cmds)
    | dirname == "/" = go ["/"] m cmds
    | dirname == ".." = go (tail current) m cmds
    | otherwise = go (dirname:current) m cmds
  go current m ((List lines):cmds) =
    go current newM cmds
      where newM = foldr1 (flip (.)) (map (addFile current) lines) m
  go _ m [] = m

main :: IO ()
main = print . solve . parse =<< readFile "input"
