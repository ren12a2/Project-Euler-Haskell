mult :: Int -> Int
mult n = sum [x|x <-[1..n], x `mod` 5 ==0 || x `mod` 3==0]

main :: IO()
main = do
    print(mult 1000)
    