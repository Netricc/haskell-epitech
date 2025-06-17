myTake :: Int -> [a] -> [a]
myTake _ [] = []
myTake n _ | n <= 0 = []
myTake n (x:xs) = x : myTake (n - 1) xs