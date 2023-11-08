dropN :: Int -> [Char] -> [Char]
dropN n [] = []
dropN n s = take (n-1) s ++ dropN n (drop n s)

main :: IO()
main = do
    print $ dropN 3 "abcdef"