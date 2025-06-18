isDigitChar :: Char -> Bool
isDigitChar c = c >= '0' && c <= '9'

myFilter :: (a-> Bool)-> [a]-> [a]
myFilter _ [] = []
myFilter predicate (x:xs) | predicate x = x : myFilter predicate xs
                          | otherwise = myFilter predicate xs

readInt :: [Char]-> Maybe Int
readInt [] = Nothing
readInt xs 
            | null digits = Nothing
            | xs > digits = Nothing
            | otherwise = Just (read digits :: Int)
            where digits = myFilter isDigitChar xs


-- readInt :: [Char] -> Maybe Int
-- readInt [] = Nothing
-- readInt xs = 
--     let digits = filter isDigitChar xs
--     in if null digits || length digits /= length xs
--        then Nothing
--        else Just (read digits :: Int)