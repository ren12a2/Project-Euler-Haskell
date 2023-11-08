n :: [Int]
n = [x| x <- [1..100], even x]

main :: IO()
main =do
    print(n)

-- printing even numbers till 100