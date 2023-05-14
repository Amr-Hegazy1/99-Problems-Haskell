
rotate [] _ = []

rotate l 0 = l

rotate (h:t) c | c > 0 = (rotate (t ++ [h]) (c-1)) 
               | c < 0 = ( rotate (h:t) ( length t + c + 1 ) )