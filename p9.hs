pack [x] = [x]
pack (x:y:t) | x == y = [x] ++ pack ([y] ++ t)
             | otherwise = [x] : ([y] ++ pack t)