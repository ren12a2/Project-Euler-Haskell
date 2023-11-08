fzs = cycle ["", "", "FIZZ"]
bzs = cycle ["", "", "", "", "BUZZ"]
fbs = zipWith (++) fzs bzs
nums = map show [1..]
pick a b = if null a then b else a
answer = zipWith pick fbs nums
main::IO()
main = do
    print $ take 30 answer