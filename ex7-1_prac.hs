high_grades_sum rs =
  sum [unit | (grade, unit) <- rs, grade == 'S' || grade == 'A']

main = do
    print $ high_grades_sum [('S', 2), ('A', 3), ('C', 3), ('S', 1), ('S', 2)]