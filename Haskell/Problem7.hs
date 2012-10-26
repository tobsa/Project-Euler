------------------------------------------------------------
-- Problem 7
-- 
-- By listing the first six prime numbers: 2, 3, 5, 7, 11, 
-- and 13, we can see that the 6th prime is 13.
--
-- What is the 10 001st prime number?
------------------------------------------------------------
module Problem7 (problem7) where

------------------------------------------------------------
-- Solution 1
------------------------------------------------------------
problem7 :: Integer -> Integer
problem7 1 = 2
problem7 x = problem7' 3 2
    where problem7' y z
            | z == x = if isPrime y then y
                                    else problem7' (y+2) z
            | isPrime y = problem7' (y+2) (z+1)
            | otherwise = problem7' (y+2) z 
            
isPrime x
    | x == 1         = False
    | x < 4          = True
    | x `mod` 2 == 0 = False
    | x < 9          = True
    | x `mod` 3 == 0 = False
    | otherwise      = isPrime' 5 ax
    where   ax = floor(sqrt(fromIntegral x))
            isPrime' :: Integer -> Integer -> Bool
            isPrime' f r
                | f > r              = True
                | x `mod` f == 0     = False
                | x `mod` (f+2) == 0 = False
                | otherwise          = isPrime' (f+6) r