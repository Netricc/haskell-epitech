
myInit :: [a]-> [a]
myInit [] = []
myInit [_] = []
myInit (x:xs) = x : myInit xs
