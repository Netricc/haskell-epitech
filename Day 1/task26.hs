myFoldr :: (a-> b-> b)-> b-> [a]-> b
myFoldr _ val [] = val
myFoldr func val (x:xs) = func x (myFoldr func val xs)
