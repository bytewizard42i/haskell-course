-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).

{- personal notes
function arg1(device hourly cons) arg 2(hours of daily use) arg3(max cons allowed)
    | cons < maxCons = "Your consumption is smaller than the maximum allowed."
    | cons = maxCons = "Your consumption is equal to the maximum allowed."
    | cons > maxCons = "Warning! Your consumption exceeds the maximum allowed."
    calculate monthly useage based on arg1 and arg2 and compare it with arg3
-}

{- answer to question 1
checkConsumption :: Float -> Float -> Float -> String
checkConsumption hourlyCons hoursDaily maxCons
    | monthlyCons < maxCons = "Your consumption is smaller than the maximum allowed."
    | monthlyCons == maxCons = "Your consumption is equal to the maximum allowed."
    | monthlyCons > maxCons = "Warning! Your consumption exceeds the maximum allowed."
    where
        monthlyCons = hourlyCons * hoursDaily * 30
-}
 
-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.

{- answer to question 2
checkConsumption :: Float -> Float -> Float -> String
checkConsumption hourlyCons hoursDaily maxCons
    | monthlyCons < maxCons = "Your consumption is smaller than the maximum allowed." ++ " Congratulations! You saved " ++ show ((maxCons - monthlyCons)/1000) ++ " kW this month."
    | monthlyCons == maxCons = "Caution: Your consumption is exactly equal to the maximum allowed." ++ " You should consider cutting back on your usage next month."
    | monthlyCons > maxCons = "Warning! Your consumption exceeds the maximum allowed." ++ " You have exceeded the limit by " ++ show ((monthlyCons - maxCons)/1000) ++ " kW." ++ " By government authority 5971-A, your CBDC-America wallet will be charged with a fine of $100." ++ " Please pay the fine volunterily within 7 days to avoid auto debit and further penalties." ++ " Thank you for banking with CBDC-America." ++ " Please note that our records indicate that you have not yet filled out our consensus form for 2027. Please fill out the form by the end of the month to avoid further penalties." --lol, I am f-ing hilarious
    where
        monthlyCons = hourlyCons * hoursDaily * 30 
-}

-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.

{- personal notes
create a let expression which converts days hours and minutes to seconds
-}

{- answer to question 3
convertToSeconds :: Int -> Int -> Int -> Int
convertToSeconds days hours minutes = 
    let
        daysToSeconds = days * 24 * 60 * 60
        hoursToSeconds = hours * 60 * 60
        minutesToSeconds = minutes * 60
    in
        daysToSeconds + hoursToSeconds + minutesToSeconds
-}

-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.  

{- personal notes quotient 
-}

quotientGuards :: Float -> Float -> String
quotientGuards x y
    | y == 0 = "Division by zero is not possible."
    | x/y <= 1 = show (x/y)
    | otherwise = "Sorry your quotient is greater than 1."

quotientIf :: Float -> Float -> String
quotientIf _ 0 = "Division by zero is not possible"
quotientIf x y = 
    if x / y <= 1 
    then show (x / y) 
    else show "Sorry your quotient is greater than 1."

-- Question 5
-- Write a function that takes in two numbers and calculates the sum of square roots for the product and quotient
-- of those numbers. Write the function such that you use a where block inside a let expression and a
-- let expression inside a where block. 

{- 
takes two numbers x, y and calculates the sum of the square roots of the product and quotient of x and y. ?  sqr root + sqr root 
-}

calculateSumOfSqrRts :: Float -> Float -> Float
calculateSumOfSqrRts x y = 
    let
        product = x * y 
        quotient = x / y 
        squareRootOfProduct = sqrt product
        squareRootOfQuotient = sqrt quotient
        sumOfSquareRoots = squareRootOfProduct + squareRootOfQuotient
    in
        sumOfSquareRoots --holy shit, it works!

{- 
I was trying to incorporate the following code which I thought would be cool and Python(y), as I really like showing the outputs along the way, but sadly I couldnt get it to work:
        show (product) ++ " is the product of " ++ show (x) ++ " and " ++ show (y)

        show (quotient) ++ " is the quotient of " ++ show (x) ++ " and " ++ show (y)
-}
