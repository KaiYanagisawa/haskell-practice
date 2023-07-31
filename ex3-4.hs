acc year month =
    case (year, month) of
        (2023, 1) -> 100 
        (_, 1)    -> 50 + acc (year - 1) 12 
        (_, 12)   -> 1.05 * acc year (month - 1)
        _         -> acc year (month - 1)

main = do
    print(acc 2023 1)
    print(acc 2024 8)
    print(acc 2030 4)