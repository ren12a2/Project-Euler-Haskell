
anagram ::[Char]->[Char]-> Bool
anagram a b = length [x| x<-a, x `elem` b] == length b

main::IO()
main = do
    print(anagram "car" "rac")