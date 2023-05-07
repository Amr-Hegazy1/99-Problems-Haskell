encode l = encode1 ( l 0 )

encode1 [x] _ = (x,1)

encode1 (h1:h2:t) i | h1 == h2 = encode1 ([h2]++t) (i+1)
                    | otherwise = [(h1,i)] ++ (encode1 ([h2]++t) 0)