-- Integer is basically huge values too
-- length is for Int not Integer and Int cant capture huge values, so we need Integer

rev = read.reverse.show 

lyc :: Integer -> Bool
lyc n = lyc' n 50
    
lyc' :: Integer -> Int -> Bool
lyc' _ 0 = True
lyc' n counter = 
    let nxt = n + rev n 
    in nxt /= rev nxt && lyc' nxt (counter - 1) 

list :: Integer  -> Integer  -> Int
list a b = length $ filter lyc [a..b]

main :: IO()
main =do
    print $ list 1 9999