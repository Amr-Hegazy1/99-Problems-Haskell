

compress [x] = [x]

compress (x:y:t) | x == y = compress ([y] ++ t)
                 | otherwise = [x] ++ compress ([y] ++ t)