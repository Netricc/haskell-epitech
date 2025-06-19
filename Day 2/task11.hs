concatLines :: Int-> IO String
concatLines n
    | n <= 0 = return ""
concatLines n = do
    line <- getLine
    restLines <- concatLines (n - 1)
    return (line ++ restLines)