fibonnaci' :: [Int] -> Int -> (Int, Int) -> [Int]
fibonnaci' xs 0 _ = xs
fibonnaci' seed count memo = fibonnaci' (seed ++ [next]) (count - 1) (next, last)
  where
    (last, secondLast) = memo
    next = last + secondLast

fibonnaci :: Int -> [Int]
fibonnaci 0 = [0]
fibonnaci 1 = [0, 1]
fibonnaci x = fibonnaci' (fibonnaci 1) (x - 1) (1, 0)
