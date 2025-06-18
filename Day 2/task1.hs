myElem :: Eq a => a-> [a]-> Bool
myElem = \elem -> \myList ->
            case myList of
                [] -> False
                x:xs | x == elem -> True
                _:xs -> myElem elem xs


