fun :: Int -> Int
fun a = length [x| x<-[1..a], a `mod` x ==0]

main :: IO()
main =do
    let t=([sum [1..x]| x<-[1..10]]) 
    let total_divisors = map fun t
    let pair =(zipWith (,) total_divisors t) -- I can't believe this ! make note of this <3
    putStrLn "trinum with over 5 divisors"
    print(snd(head (filter (\ (a,b)-> a>5) pair)))


   


    