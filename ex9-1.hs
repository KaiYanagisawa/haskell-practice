import System.Directory
import Data.Graph (path)

path_type path = do
    directory <- doesDirectoryExist path
    file <- doesFileExist path
    if file then   
        putStrLn "file"
    else if directory then
        putStrLn "directory"
    else
        putStrLn "unknown"


main = do
    path_type "Main.hs"
    path_type "."
    path_type "abc"