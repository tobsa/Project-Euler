------------------------------------------------------------
-- Problem 3
--
-- The prime factors of 13195 are 5, 7, 13 and 29.
--
-- What is the largest prime factor of the 
-- number 600851475143 ?
------------------------------------------------------------
module Problem3 (problem3) where

------------------------------------------------------------
-- Enter a number as argument
------------------------------------------------------------
problem3 :: Integer -> Integer
problem3 x = problem3' x 2

------------------------------------------------------------
-- Solution 1
------------------------------------------------------------
problem3' :: Integer -> Integer -> Integer
problem3' x y
    | x == y          = x
    | x `mod` y  == 0 = problem3' (x `div` y) y
    | otherwise       = problem3' x (y+1)

