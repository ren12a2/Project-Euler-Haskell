
rev :: Int -> Int
rev = read.reverse.show 

pal :: Int -> Bool
pal n = rev (rev n + n) ==  rev n + n

lych :: Int -> Int -> Bool
lych n y
    | pal n = True
    | otherwise = lych (n + rev n) (y+1) && (y<=0 &&y<=50)

list :: Int -> [Bool]
list n = [lych x 0 | x<- [n..1]]
    
main :: IO()
main = do
    print $ list 349 

    