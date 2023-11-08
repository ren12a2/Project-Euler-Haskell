{-strong:: Int-> Bool
strong z = sum [ product [1..y]| y<-[read [show z!!x]| x<-[0..(length (show z) -1)]]] == z-}

import Data.Char
strong :: Int -> Int
strong = sum.map(fact.digitToInt).show 
    where 
        fact n = product [1..n] 

isStrong:: Int -> Bool
isStrong n = strong n == n

main::IO()
main=do
    print(isStrong 145)
