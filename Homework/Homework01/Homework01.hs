
-- Question 1
-- Write a multiline comment below.

{-
This is a multi line comment
I am proud to be able to finally code in Haskell
This is the end of my multi line comment
-}

-- Question 2
-- Define a function that takes a value and multiplies it by 3.

tripleX :: Int -> Int
tripleX x = x * 3

-- Question 3
-- Define a function that calculates the area of a circle.

areaCircle :: Float -> Float
areaCircle r = pi * (r^2)

-- Question 4
-- Define a function that calculates the volume of a cylinder by composing the previous function together with the height of the cylinder.

volumeCylindar :: Float -> Float -> Float
volumeCylindar a l = areaCircle a * l  --area a, length l

-- Question 5
-- Define a function that takes the height and radius of a cylinder and checks if the volume is greater than or equal to 42.

volumeCheck :: Float -> Float -> Bool
volumeCheck a l = volumeCylindar a l >= 42

