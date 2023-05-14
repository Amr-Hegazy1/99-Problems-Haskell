dropEvery s c = dropEvery1 s c c

dropEvery1 [] _ _ = []

dropEvery1 (h:t) c 1 = dropEvery1 t c c

dropEvery1 (h:t) c i = [h] ++ dropEvery1 t c (i-1)