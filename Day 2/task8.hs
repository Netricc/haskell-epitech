myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 +  (myLength xs)

getLineLength :: IO Int
getLineLength = do
    line <- getLine
    return (myLength line)
