myFoldl :: (b-> a-> b)-> b-> [a]-> b
myFoldl _ val [] = val
myFoldl func val (x:xs) = myFoldl func (func val x) xs
