repli [] _ = []

repli (h:t) c = (loop h c) ++ (repli t c)

loop h 0 = []

loop h i = [h] ++ (loop h (i-1))