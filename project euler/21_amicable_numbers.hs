sumOfDivs :: Int -> Int
sumOfDivs n = sum [ x + n `div` x | x <-[1..isqrt n] , n `mod` x ==0] - n       -- all for time complexity eh 
    where
        isqrt = floor.sqrt.fromIntegral

fun :: Int -> [(Int, Int)]
fun n = [(x, y) | x <- [1..n], let y = sumOfDivs x, y > x, sumOfDivs y == x]

sumAm :: Int -> Int
sumAm n = sum [x + y | (x, y) <- fun n]

main :: IO()
main = do
    print $ sumAm 10000