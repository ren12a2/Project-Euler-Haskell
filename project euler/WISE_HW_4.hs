fun :: [Int] -> Bool
fun x = head x < head (tail x) 

access :: [Int]-> Bool
access x = null $ [fun (drop n x) | n<-[1..(length x -2)], not(fun(drop n (x)))]

main::IO()
main=do
    print(access [1,2,3,4,4,5])
    

