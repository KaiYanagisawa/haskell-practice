import System.Directory

setup = do
    createDirectory "A"
    createDirectory "A/B"
    createDirectory "A/B/C"
    createDirectory "A/D"
    writeFile "A/a.txt" "hello A"
    writeFile "A/B/b.txt" "bye B\nhi B"
    writeFile "A/B/C/c.txt" "hello C\nbye C"
    writeFile "A/D/d.txt" "bye D"

ls dir = do
    items <- getDirectoryContents dir
    let fs = [item | item <- items, not (elem item [".", ".."])]
    mapM_ putStrLn fs 

main = do
    setup
    ls "A"    