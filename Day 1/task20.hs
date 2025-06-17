-- reusing the function from task 14
myNth :: [a]-> Int-> a
myNth (x:xs) 0 = x
myNth (x:xs) i = myNth xs (i - 1)


myLast :: [ a ] -> a
myLast xs = myNth xs ((length xs) - 1)
