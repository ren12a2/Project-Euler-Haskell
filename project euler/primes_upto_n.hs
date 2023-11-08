sieveOfEratosthenes :: Int -> [Int]
sieveOfEratosthenes n = sieve [2..n]
  where
    sieve [] = []
    sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]

main :: IO ()
main = do
    putStrLn "Enter a number (n):"
    n <- readLn :: IO Int
    let primesUpToN = sieveOfEratosthenes n
    putStrLn $ "Prime numbers up to " ++ show n ++ " are: " ++ show primesUpToN
