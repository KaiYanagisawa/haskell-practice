initial_letters words =
    map head words

main = do
    print (initial_letters ["hotel", "echo", "lima", "oscar"])
    print (initial_letters ["lima", "oscar", "victor", "echo"])