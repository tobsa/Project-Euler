------------------------------------------------------------
-- Problem 4
-- 
-- A palindromic number reads the same both ways. The 
-- largest palindrome made from the product of two 2-digit 
-- numbers is 9009 = 91 99.
--
-- Find the largest palindrome made from the product of two
--  3-digit numbers.
------------------------------------------------------------
module Problem4 () where

import Data.List

------------------------------------------------------------
-- Solution 1
------------------------------------------------------------
problem4 :: (Show a, Num a, Enum a,Ord a) => a -> [a]
problem4 x = sort([x' * y' | x' <- [1..x], y' <- [1..x], show(x' * y') == reverse(show(x' * y'))])
   
