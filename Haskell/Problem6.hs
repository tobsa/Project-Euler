------------------------------------------------------------
-- Problem 6
-- 
-- The sum of the squares of the first ten natural numbers 
-- is, 1^2 + 2^2 + ... + 10^2 = 385
-- The square of the sum of the first ten natural numbers is,
-- (1 + 2 + ... + 10)^2 = 55^2 = 3025
-- Hence the difference between the sum of the squares of 
-- the first ten natural numbers and the square of the sum
--  is 3025 - 385 = 2640.
--
-- Find the difference between the sum of the squares of the
-- first one hundred natural numbers and the square of 
-- the sum.
------------------------------------------------------------
module Problem6 (problem6) where

------------------------------------------------------------
-- Solution 1
------------------------------------------------------------
problem6 :: Integer -> Integer
problem6 x = bxs - axs
    where axs = sum(map (^2) [1..x])
          bxs = sum([1..x])^2

------------------------------------------------------------
-- Solution 2
------------------------------------------------------------
problem6' :: Integer -> Integer
problem6' x = axs^2 - bxs
    where axs = (x*x + x) `div` 2
          bxs = (2*x^2 + 2*x + x + 1) * x `div` 6

