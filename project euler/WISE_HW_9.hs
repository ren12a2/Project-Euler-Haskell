import Data.List
rev:: Int -> Int
rev  = read.reverse.sort.show

num ::Int -> Int
num = read.sort.show

kap :: Int -> [Int]
kap x
    | x==6174 = [6174]
    | x==0 = []
    | x>=1000 && x<=9999 = x : kap(rev x-num x)

main::IO()
main=do
    print $ kap 1234
   