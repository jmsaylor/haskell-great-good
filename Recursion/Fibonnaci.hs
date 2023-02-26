fibonnaciA :: [Int] -> Int -> (Int, Int) -> [Int]
fibonnaciA xs 0 _ = xs
fibonnaciA xs count (n1, n2) = fibonnaciA (xs ++ [n1 + n2]) (count - 1) ((n1 + n2), n1)

fibonnaci :: Int -> [Int]
fibonnaci 0 = [0]
fibonnaci 1 = [0, 1]
fibonnaci x = fibonnaciA (fibonnaci 1) (x - 1) (1, 0)
