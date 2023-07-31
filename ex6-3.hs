rev words =
    foldl f [] words
    where
        f x w =
            w : x
            

main = do
    print $ rev ["yes", "I", "am"]
    print $ rev ["give", "me", "a", "word"]