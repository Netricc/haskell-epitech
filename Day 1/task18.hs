myAppend :: [a]-> [a]-> [a]
myAppend [] ys = ys
myAppend (x:xs) ys = x : myAppend xs ys


myReverse :: [a]-> [a]
myReverse [] = []
myReverse (x:xs) = myAppend (myReverse xs) [x]
