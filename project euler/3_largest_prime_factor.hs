isPrime :: Int -> Bool
isPrime n
    |n<1  = False
    |n==2 = True
    |otherwise = next n 2

next :: Int -> Int -> Bool
next n d
    |d>(n `div` 2) = True
    | n `mod`d ==0 = False
    | otherwise = next n (d+1)
    
main ::IO()
main= do
    print $ isPrime 47
    
    