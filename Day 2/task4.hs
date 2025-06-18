safeSucc :: Maybe Int-> Maybe Int
safeSucc Nothing = Nothing
safeSucc (Just x) = Just (x + 1) 