myFilter :: (a-> Bool)-> [a]-> [a]
myFilter _ [] = []
myFilter predicate (x:xs) | predicate x = x : myFilter predicate xs
                          | otherwise = myFilter predicate xs


myAppend :: [a]-> [a]-> [a]
myAppend [] ys = ys
myAppend (x:xs) ys = x : myAppend xs ys


myQuickSort :: (a -> a -> Bool) -> [a] -> [a]
myQuickSort _ [] = []
myQuickSort predicate (x:xs) =
  let left  = myQuickSort predicate (myFilter (\y -> predicate y x) xs)
      right = myQuickSort predicate (myFilter (\y -> not (predicate y x)) xs)
  in left ++ [x] ++ right