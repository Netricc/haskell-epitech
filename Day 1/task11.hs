myHead :: [a]-> a
myHead [a] = a
myHead [] = error "can't return empty value"