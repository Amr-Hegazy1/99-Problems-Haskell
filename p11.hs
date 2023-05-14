data Encode = Single Char | Multiple Int Char deriving Show

encodeModified l = encodeModified1 l 0

encodeModified1 [] _ = []

encodeModified1 [x] 0 = [(Single x)]

encodeModified1 [x,y] i | x == y = [(Multiple (i+2) x)]
                        | otherwise = [(Single x),(Single y)]

encodeModified1 (h1:h2:t) i | h1 == h2 = encodeModified1 (h2:t) (i+1)
                            | h1 /= h2 && i == 0 = ((Single h1) : (encodeModified1 (h2:t) i))
                            | otherwise = ((Multiple (i+1) h1) : (encodeModified1 (h2:t) 0))