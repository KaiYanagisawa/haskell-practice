longest words = 
    foldr f [] words
    where
        f x n = if length x >= length n then x else n

main = do
    print $ longest ["apple", "banana", "strawberry"]
    print $ longest ["show", "me", "where", "to", "look"]