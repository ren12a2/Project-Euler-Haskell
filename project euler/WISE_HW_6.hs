collatz :: Int -> [Int]
collatz x
    | x == 1    = [x]
    | even x    = x : collatz (div x 2)  
    | otherwise = x : collatz (3*x + 1) 

main ::  IO()
main = do
    print $ collatz 16