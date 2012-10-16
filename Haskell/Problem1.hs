------------------------------------------------------------
-- Problem 1
--
-- If we list all the natural numbers below 10 that are 
-- multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of 
-- these multiples is 23.
--
-- Find the sum of all the multiples of 3 or 5 below 1000.
------------------------------------------------------------

------------------------------------------------------------
-- Enter a list as an argument
------------------------------------------------------------
problem1 :: [Integer] -> Int
problem1 [] = 0
problem1 xs = problem1'' xs

------------------------------------------------------------
-- Solution 1
------------------------------------------------------------
problem1' :: [Int] -> Int
problem1' xs = sum $ filter (\y -> (y `mod` 3 == 0) || (y `mod` 5 == 0)) (init xs)

------------------------------------------------------------
-- Solution 2 (Improved)
------------------------------------------------------------
problem1'' :: [Integer] -> Int
problem1'' xs = (sumDivisibleBy xs 3) + (sumDivisibleBy xs 5) - (sumDivisibleBy xs 15)

------------------------------------------------------------
-- Helper function
------------------------------------------------------------    
sumDivisibleBy :: [Integer] -> Int -> Int       
sumDivisibleBy xs n = (n * (p * (p + 1))) `div` 2
    where p = (length xs - 1) `div` n