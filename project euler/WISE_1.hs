{-you are given an array of fully odd or even integers (atleast 3): except for single interger N, find N -}

findOutlier :: [Int]-> Int
findOutlier x 
    | length (filter odd x) == 1 = head (filter odd x)
    |otherwise = head(filter even x)

main::IO()
main= do
    print(findOutlier [1,2,7])
    print(findOutlier [2,4,7])


