get_lines = do
    let list = []
    judge list

judge l = do
    x <- getLine
    if x == "bye" then
        return l 
    else do
        let list = reverse(x : reverse l)
        judge list

main = do
    xs <- get_lines
    print xs