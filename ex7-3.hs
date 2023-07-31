parts n = 
    [(x, y) | x <- [0..9], y <- [0..9], x + y == n]

main = do
    print $ parts 1
    print $ parts 10