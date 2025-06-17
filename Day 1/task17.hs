myAppend :: [a]-> [a]-> [a]
myAppend [] ys = ys
myAppend (x:xs) ys = x : myAppend xs ys