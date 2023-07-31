nospace lines =
    [removeSpaces l | l <- lines, elem ' ' l]

removeSpaces str =
    [s | s <- str, s /= ' ']

main = do
    print $ nospace ["good bye", "hello","I love you"]
    print $ nospace ["Hap py", "go ", "Lucky!"]