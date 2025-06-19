myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 +  (myLength xs)


printAndGetLength :: String-> IO Int
printAndGetLength st = do
        putStrLn st
        return $ myLength st