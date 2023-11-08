
lcmList :: [Int] -> Int
lcmList = foldr lcm 1

main :: IO ()
main = do
  let numbers = [1..10] 
  let result = lcmList numbers
  putStrLn ("The smallest number evenly divisible by all numbers from 1 to 20 is: " ++ show result)
