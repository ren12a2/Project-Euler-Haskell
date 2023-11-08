divisible :: Int -> [Int] 
divisible n = [x | x <-[2..n-1], n `mod` x==0 ]

main :: IO()
main =do
    n <- readLn :: IO Int 
    print(divisible n )