
-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.
-- (Use the types presented in the lecture.)

f1 :: Float -> Float -> Float -> Float
f1 x y z = x ** (y/z)

f2 :: Float -> Float -> Float -> Float
f2 x y z = sqrt (x/y - z)

f3 :: Bool -> Bool -> [Bool]        --Im not sure why this works.
f3 x y = [x == False] ++ [y]

f4 :: [Int] -> [Int] -> [Int] -> Bool   --Im not sure why this works.
f4 x y z = x == (y ++ z)


-- Question 2
-- Why should we define type signatures of functions? How can they help you? How can they help others?

{-
Defining the type signature of f(x) is important because it allows the programmer to understand the type of the input and output of the function.
-}

-- Question 3
-- Why should you define type signatures for variables? How can they help you?

{-
Defining the type signature of a variable is important because it allows the programmer to understand the type of the variable and the type of the value that the variable can hold.
-}

-- Question 4
-- Are there any functions in Haskell that let you transform one type to the other? Try googling for the answer.

{-
Yes, Haskell has a package called Convertible that provides typeclasses and instances for converting between different types. The package's typeclass has a function that converts types like dates, times, and numeric values. The package also includes optional instances for converting numeric and time types, as well as utilities for writing custom instances.
-}


-- Question 5
-- Can you also define in Haskell list of lists? Did we showed any example of that? How would you access the inner
-- most elements?

{-
Yes, you can define a list of lists in Haskell. We did not show an example of that in the lecture. To access the innermost elements, you would use the !! operator to access the element at the specified index in the list.
-}

