fibonacci :: [Int]
fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci)

sumEvenFibonacci :: Int -> Int
sumEvenFibonacci limit = sum [x | x <- takeWhile (<= limit) fibonacci, x `mod` 2 == 0]

main :: IO ()
main = do
  let limit = 4000000
      result = sumEvenFibonacci limit
  putStrLn $ "The sum of even-valued Fibonacci terms not exceeding " ++ show limit ++ " is: " ++ show result
  print $ fibonacci [1..10]
