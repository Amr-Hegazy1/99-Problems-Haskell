range start end | (start-end) == 1 = []
                | otherwise = (start:(range (start + 1) end))