fizzBuzz :: Int -> String
fizzBuzz n
    | n`mod`15==0="FIZZBUZZ"
    | n`mod`3==0 = "FIZZ"
    | n`mod`5==0 = "BUZZ"
    | otherwise = show n 

range:: Int-> [String]
range n= [fizzBuzz z| z<-[1..n]]

main:: IO()
main = do
    print(range 3)

   -- mod n 3 
   -- div n 3
   -- repel like ghci