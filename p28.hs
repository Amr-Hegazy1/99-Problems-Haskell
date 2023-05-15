lsort [] = []

lsort [x] = [x]

lsort (h:t) = insert h (lsort t)

insert x [] = [x]

insert x (h:t) | length h < length x = (h : insert x t)
               | otherwise = (x:h:t)




