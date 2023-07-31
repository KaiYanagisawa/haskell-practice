import System.Directory
import Data.Graph (path)

count_items path = do
    isFile <- doesFileExist path
    if isFile then
        return 1
    else do
        isDir <- doesDirectoryExist path
        if isDir then do
            contents <- listDirectory path
            let item = map (path "/") contents
            subContent <- mapM count_items item
            return $ sum subContent
        else
            return 0
main = do
    createDirectory "A"
    writeFile "A/a" "file a"
    writeFile "A/b" "file b"
    count_items "A" >>= print
    count_items "A/a" >>= print