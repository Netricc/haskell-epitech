myFilter :: (a-> Bool)-> [a]-> [a]
myFilter _ [] = []
myFilter predicate (x:xs) | predicate x = x : myFilter predicate xs
                          | otherwise = myFilter predicate xs