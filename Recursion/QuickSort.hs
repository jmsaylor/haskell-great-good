quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  let little = [a | a <- xs, a <= x]
      big = [a | a <- xs, a > x]
  in quicksort little ++ [x] ++ quicksort big
