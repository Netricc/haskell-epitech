myAppend :: [a]-> [a]-> [a]
myAppend [] ys = ys
myAppend (x:xs) ys = x : myAppend xs ys

myReplicate :: Int -> Char -> String
myReplicate n char 
    | n <= 0 = []
    | otherwise = char : myReplicate (n-1) char

printMiddleRows :: Int -> Int -> IO ()
printMiddleRows 0 _ = return ()
printMiddleRows count width = do
    putStrLn ('|' : (myReplicate ((width*2) - 2) ' ') myAppend ['|'])
    printMiddleRows (count - 1) width


printBox :: Int-> IO ()
printBox n = do
    putStrLn $ myReplicate (n*2) '+'
    printMiddleRows (n-2) (n)
    putStrLn $ myReplicate (n*2) '+'

