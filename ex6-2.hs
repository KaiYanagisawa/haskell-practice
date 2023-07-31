interpose words =
    (foldr f "" (init words)) ++ last words ++ "."
    where
        f word result =
            word ++ " " ++ result

main = do
    print $ interpose ["yes", "I", "am"]
    print $ interpose ["no"]