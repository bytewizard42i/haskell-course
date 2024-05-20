-- Question 1
-- Lets say you have the nested values defined bellow. How would you get the value of
-- 4 by using only pattern matching in a function?

nested :: [([Int], [Int])]
nested = [([1,2],[3,4]), ([5,6],[7,8])]

-- my answer:
{-
findFour :: [([Int], [Int])] -> Int
findFour (x,_) = If x == 4 Then " There is a 4 in the first position"
findFour (_,y) = If y == 4 Then " There is a 4 in the second position" 
findFour [] = error "No 4 found"
-}

-- Gpt4o answer:
{-
findFour :: [([Int], [Int])] -> Int
findFour [] = error "No 4 found"
findFour ((xs, ys):rest) =
    case (xs, ys) of
        ([], []) -> findFour rest
        (4:_, _) -> 4
        (_, 4:_) -> 4
        (_:xs', _:ys') -> findFour ((xs', ys'):rest)
        (xs', ys') -> findFour rest
-}
-- Gpt4o answer 2:

findFour :: [([Int], [Int])] -> Int
findFour [] = error "No 4 found"
findFour ((xs, ys):rest)
    | 4 `elem` xs = 4
    | 4 `elem` ys = 4
    | otherwise = findFour rest




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

