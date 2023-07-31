headlines file n = do
    content <- readFile file
    let c = [x | (x, i) <- zip (lines content) [1 .. n]]
    putStr $ unlines c

main = do
    headlines "lw.txt" 1
    putStrLn "----------"
    headlines "lw.txt" 3