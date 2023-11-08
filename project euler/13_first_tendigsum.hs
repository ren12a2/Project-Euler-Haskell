firstTenDigits :: [Integer] -> Integer
firstTenDigits = read . take 10 . show . sum

main::IO()
main =do
    print(firstTenDigits [1234567890,1111111])