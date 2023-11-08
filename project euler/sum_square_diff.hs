main :: IO()
main =do
    print( (sum [1..10])^2-sum(map (\x -> x*x) [1..10]))