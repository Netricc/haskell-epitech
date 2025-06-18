myLookup :: Eq a => a-> [(a,b)]-> Maybe b
myLookup _ [] = Nothing
myLookup x ((a,b):list)
                            | x == a = Just b
                            | otherwise = myLookup x list
