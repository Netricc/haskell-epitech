safeNth :: [a]-> Int-> Maybe a
safeNth [] _ = Nothing
safeNth (x:xs) i
    | i < 0 = Nothing
    | i == 0 = Just x
    | otherwise = safeNth xs (i - 1)
