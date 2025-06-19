getInt :: IO (Maybe Int)
getInt = do
    result <- getLine
    return (Just (read result))




safeSucc :: Maybe Int-> Maybe Int
safeSucc Nothing = Nothing
safeSucc (Just x) = Just (x + 1) 