
main :: IO()
main =do
    print(maximum (filter (\ z -> z==read(reverse $ show z)) [x*y| x<-[99,98..1],y<-[99,98..1]]))
