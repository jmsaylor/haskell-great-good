organize :: [Int] -> ([Int], [Int], [Int])
organize xs = foldl (size) ([], [], []) xs

size :: ([Int], [Int], [Int]) -> Int -> ([Int], [Int], [Int])
size (g, h, i) x
  | x <= 10 = (g ++ [x], h, i)
  | x <= 20 = (g, h ++ [x], i)
  | otherwise = (g, h, i ++ [x])
