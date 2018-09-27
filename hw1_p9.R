finger_table = function(N,m){
  for(i in 1:m){
    result = (N+2^i) %% 2^m
    print(paste(i," entry"))
    print(result)
  }
}