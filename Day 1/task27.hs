
myPartition :: (a -> Bool) -> [a] -> ([a], [a])
myPartition _ [] = ([], [])
myPartition func (x:xs)
  | func x    = let (yes, no) = myPartition func xs in (x : yes, no)
  | otherwise = let (yes, no) = myPartition func xs in (yes, x : no)

