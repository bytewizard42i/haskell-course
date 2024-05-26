-- Question 1
-- Lets say you have the nested values defined below. How would you get the value of
-- 4 by using only pattern matching in a function?

nested :: [([Int], [Int])]
nested = [([1,2],[3,4]), ([5,6],[7,8])]

{- 
Attempt 50, 5-26-2024
Still getting my but kicked. It seems very innefficient that one would have to repeat the entire structure, especially were it longer, to define each case. There must be a way to call each paired list and then check the next paired list in a recursive fashion. It is simply out of my skillset right now to do so. Perhaps if I study lists in haskell from a few other classes, Ill be able to fill in this educational gap. I feel so stupid. Its probably very simple and Im overthinking it. 
-}
findFour :: [([Int], [Int])] -> String
findFour [] = "No 4 found"
findFour [x,_] = if x == 4 then "4 in the first positon" 
findFour [_,y] = if y == 4 then "4 in the second position"

-- Question 2
-- Write a function that takes a list of elements of any type and, if the list has 3 or more elements, it
-- removes them. Else, it does nothing. Do it two times, one with multiple function definitions and one with
-- case expressions.


-- Question 3
-- Create a function that takes a 3-element tuple (all of type Integer) and adds them together


-- Question 4
-- Implement a function that returns True if a list is empty and False otherwise.


-- Question 5
-- Write the implementation of the tail function using pattern matching. But, instead of failing if
-- the list is empty, return an empty list.


-- Question 6
-- write a case expression wrapped in a function that takes an Int and adds one if it's even. Otherwise does nothing. 
-- (Use the `even` function to check if the number is even.)

