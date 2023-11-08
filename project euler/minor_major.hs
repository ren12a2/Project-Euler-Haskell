age :: Double -> String
age n
    | n<18 = "minor"
    | n>17 = "major"
    | n<0 && n>120 = "invalid"

main :: IO()
main =do
    putStrLn "Enter Age: "
    input <- getLine
    let n= read input :: Double
    putStrLn $ "You are a " ++ show (age n)
    