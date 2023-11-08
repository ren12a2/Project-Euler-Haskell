--import Data.Char use digitToInt instead of read  
main ::IO()
main =do
    let n= 2^15
    let s= show n
    let dig =[read [s!!x]| x<-[0..(length s -1)]] -- this is genius, make note of it -- read has :t [char], not char: s!!x gives char so put [] to make it [char]
    print(sum(dig))