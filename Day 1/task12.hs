myTail :: [a]-> [a]
myTail (_:xs) = xs
myTail [] = error "can't return with empty list"