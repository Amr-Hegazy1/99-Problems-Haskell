data Encode = Single Char | Multiple Int Char deriving Show

decodeModified [] = []

decodeModified (h:t) = loop h ++ decodeModified t


loop (Single x) = [x]

loop (Multiple 0 x) = []

loop (Multiple i x) = [x] ++ loop (Multiple (i-1) x)