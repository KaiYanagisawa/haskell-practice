diff_loc file1 file2 = do
    content1 <- readFile file1
    content2 <- readFile file2
    let line1 = lines content1
        line2 = lines content2
        len1 = length line1
        len2 = length line2
    if len1 == len2 then
        putStrLn "same"
    else
        putStrLn "not same"
main = do
    writeFile "a.txt" "1\n2\n3\n"
    writeFile "b.txt" "a\nb\nc\n"
    writeFile "c.txt" "x\ny\n"
    diff_loc "a.txt" "b.txt"
    diff_loc "a.txt" "c.txt"