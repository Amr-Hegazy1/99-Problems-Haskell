fullWords n | n == 0 = "zero-"
            | n == 1 = "one-"
            | n == 2 = "two-"
            | n == 3 = "three-"
            | n == 4 = "four-"
            | n == 5 = "five-"
            | n == 6 = "six-"
            | n == 7 = "seven-"
            | n == 8 = "eight-"
            | n == 9 = "nine-"
            | (mod n 10) == 0 = fullWords (div n 10) ++ "zero-"
            | (mod n 10) == 1 = fullWords (div n 10) ++ "one-"
            | (mod n 10) == 2 = fullWords (div n 10) ++ "two-" 
            | (mod n 10) == 3 = fullWords (div n 10) ++ "three-" 
            | (mod n 10) == 4 = fullWords (div n 10) ++ "four-" 
            | (mod n 10) == 5 = fullWords (div n 10) ++ "five-"
            | (mod n 10) == 6 = fullWords (div n 10) ++ "six-"
            | (mod n 10) == 7 = fullWords (div n 10) ++ "seven-"
            | (mod n 10) == 8 = fullWords (div n 10) ++ "eight-"
            | (mod n 10) == 9 = fullWords (div n 10) ++ "nine-"