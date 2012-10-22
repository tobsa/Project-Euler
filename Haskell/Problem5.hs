------------------------------------------------------------
-- Problem 5
-- 
-- 2520 is the smallest number that can be divided by each 
-- of the numbers from 1 to 10 without any remainder.
--
-- What is the smallest positive number that is evenly 
-- divisible by all of the numbers from 1 to 20?
------------------------------------------------------------
module Problem5 (problem5) where

------------------------------------------------------------
-- Solution 1
------------------------------------------------------------
problem5 = head [x | x <- [2520,5040..], length(filter(\y -> (x `mod` y) /= 0) [1..20]) == 0]

------------------------------------------------------------
-- Solution 2
------------------------------------------------------------
problem5' = foldl lcm 2 [1..20]
