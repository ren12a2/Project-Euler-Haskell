import Data.List
main::IO()
main =do
    print $  nub [x|x<-[1..30], y<-[2,7,5], mod x y==0]
