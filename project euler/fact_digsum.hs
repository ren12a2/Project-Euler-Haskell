main :: IO()
main = do
  let n= 100
  let f= show $ product [1..n]
  print(sum[read [f!!x]| x<- [0.. (length f -1)]])