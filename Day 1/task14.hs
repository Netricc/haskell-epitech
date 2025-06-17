myNth :: [a]-> Int-> a
-- myNth xs i = if i < 0 || i >= (length xs) then error "invalid index" else (head (drop i xs))
myNth (x:xs) 0 = x
myNth (x:xs) i = myNth xs (i - 1)

