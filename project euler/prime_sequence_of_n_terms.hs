filterPrime :: [Int] -> [Int]
filterPrime (p:xs) = p : filterPrime [x | x <- xs, x `mod` p /= 0]

main :: IO()
main = do
    let primes = filterPrime [2..]
    print (take 10 primes)

    
-- 10001st prime number 
    print(last (take 6 (take 10 primes)))
    print(last (take 10001 (take 10001 primes)))

