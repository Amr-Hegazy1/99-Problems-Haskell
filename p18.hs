slice [] _ _ = []

slice l 1 e = slice1 l e

slice (h:t) s e = slice t (s-1) (e-1)

slice1 [] _ = []

slice1 (h:t) 0 = []

slice1 (h:t) c = [h] ++ (slice1 t (c-1))