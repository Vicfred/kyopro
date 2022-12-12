-- uninhm
-- https://adventofcode.com/2022/day/11#part2
-- implementation

import Data.Sequence (Seq)
import qualified Data.Sequence as Seq
import Data.List (iterate)

data Monkey = Monkey
  { idx :: Int
  , items :: Seq Int
  , op :: Operation
  , divTest :: Int
  , mTrue :: Int
  , mFalse :: Int
  , inspected :: Int
  } deriving (Show)

data Operation = Operation Operand Operator Operand
  deriving (Show)
data Operand = OpOld | OpInt Int
  deriving (Show)
data Operator = OpPlus | OpTimes
  deriving (Show, Eq)

groupsOf :: Int -> [a] -> [[a]]
groupsOf _ [] = []
groupsOf n l = take n l : groupsOf n (drop n l)

parse :: String -> Seq Monkey
parse = Seq.fromList . map parseMonkey . groupsOf 7 . lines where
  parseMonkey lns = case map words lns of
    ["Monkey", idx]
      : ("Starting" : "items:" : items)
      : ("Operation:" : "new" : "=" : operation)
      : ["Test:", "divisible", "by", x]
      : ["If", "true:", "throw", "to", "monkey", mTrue]
      : ["If", "false:", "throw", "to", "monkey", mFalse]
      : _ -> Monkey (read (init idx))
                    (parseItems items)
                    (parseOp operation)
                    (read x)
                    (read mTrue)
                    (read mFalse)
                    0
  parseOp [a, op, b] = Operation (readOpnd a) (readOptor op) (readOpnd b)
  parseItems items = Seq.fromList $ flip map items $
    \x -> if last x == ','
      then read (init x)
      else read x
  readOpnd "old" = OpOld
  readOpnd x = OpInt (read x)
  readOptor "+" = OpPlus
  readOptor "*" = OpTimes

fromOperand :: Int -> Operand -> Int
fromOperand _ (OpInt x) = x
fromOperand x OpOld = x

runOp :: Operation -> Int -> Int
runOp (Operation a op b) item
  | op == OpTimes = a' * b'
  | op == OpPlus  = a' + b'
    where a' = fromOperand item a
          b' = fromOperand item b

inspectFirstAt :: Int -> Int -> Seq Monkey -> Seq Monkey
inspectFirstAt idx divLcm ms =
  Seq.update toM (addItem new (ms `Seq.index` toM))
    $ Seq.update idx tailedMonkey ms
  where
    monkey = ms `Seq.index` idx
    (item Seq.:<| itemsTail) = items monkey
    tailedMonkey = monkey { items = itemsTail
                          , inspected = inspected monkey + 1
                          }
    new = runOp (op monkey) item `mod` divLcm
    toM = if new `mod` divTest monkey == 0
      then mTrue monkey
      else mFalse monkey
    addItem x m = m { items = items m Seq.|> x }

inspectAllAt :: Int -> Int -> Seq Monkey -> Seq Monkey
inspectAllAt idx divLcm ms
  | Seq.null (items m) = ms
  | otherwise          = inspectAllAt idx divLcm $ inspectFirstAt idx divLcm ms
  where m = ms `Seq.index` idx

inspectRound :: Int -> Seq Monkey -> Seq Monkey
inspectRound divLcm ms = snd $ (!! Seq.length ms) $ flip iterate (0, ms)
  $ \(i, ms) -> (i+1, inspectAllAt i divLcm ms)

solve :: Seq Monkey -> Int
solve ms = product $ Seq.take 2 $ Seq.reverse $ Seq.sort $
  fmap inspected $ iterate (inspectRound divLcm) ms !! 10_000
  where divLcm = foldr1 lcm $ fmap divTest ms

main :: IO ()
main = print . solve . parse =<< readFile "input"
