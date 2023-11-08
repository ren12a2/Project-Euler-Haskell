main :: IO()
main = do
    print( sum [x | x <-[1..1000], x `mod` 5 ==0 || x `mod` 3==0])
    