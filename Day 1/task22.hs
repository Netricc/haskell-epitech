myUnzip :: [(a,b)]-> ([a], [b])
myUnzip [] = ([], [])
myUnzip ((a,b):xs) = let (as, bs) = myUnzip xs in ((a:as), (b:bs))
