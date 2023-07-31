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

lsRD path = do
    is_dir <- doesDirectoryExist path 
    if is_dir then do
        items <- getDirectoryContents path
        let fs = [path ++ "/" ++ item | 
                  item <- items, not (elem item [".", ".."])]
        mapM_ lsRD fs 
    else
        putStrLn path
main = do
    -- setup
    lsRD "A"