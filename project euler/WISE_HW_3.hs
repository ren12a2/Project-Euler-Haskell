import Data.Char
vowels :: [Char]-> Int
vowels y = length [x| x<-y, x `elem` "aeiouAEIOU"]

consonants :: [Char]-> Int
consonants y = length [x | x<-y, isAlpha x && notElem x "aeiouAEIOU"]

main:: IO()
main =do
    let y = "MariAnn3_"
    print $ vowels y
    print $ consonants y
    
    

