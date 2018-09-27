gossip = function(N,x,y, type="m", B=0){
  
  # first round
  round = 0
  N_list = matrix(0, nrow=N, ncol=1)
  N_list[1,] = 1
  
  if(type=="m"){
    k_list = matrix(0, nrow=N, ncol=log(N)+1)
    k_list[1,] = sample(1:N, log(N)+1)
    m = sample(k_list[1,], log(N))
    N_list[m,]=1
    
    print(paste("round: ", round))
    print(sum(N_list))
    
    # iterative rounds
    while(sum(N_list)<(N-5)){
      round = round+1
      inf = which(N_list>=1)
      
      for(i in 1:length(inf)){
        if(all(k_list[inf[i],]==0)){
          k_list[inf[i],] = sample(1:N, log(N)+1)
        }
        m = sample(k_list[inf[i],], log(N))
        N_list[m,]=1
      }
      print(paste("round: ", round))
      print(sum(N_list))
    }
    return(round)
  } # with all membership
  else{
    round=0
    m = sample(1:N, B)
    N_list[m,]=1
    
    while(sum(N_list)<(N-5)){
      round = round+1
      inf = which(N_list>=1)
      
      for(i in 1:length(inf)){
        m = sample(1:N, B)
        N_list[m,]=1
      }
      print(paste("round: ", round))
      print(sum(N_list))
    }
    return(round)
  }

}
N=200
x=199
y=1
loop= 300
a = matrix(0, nrow=loop, ncol=2)
for(i in 1:loop){
  round_m = gossip(N,x,y, type="m")
  round_a = gossip(N,x,y, type="a",4)
  a[i,1]= round_m
  a[i,2]= round_a
}

mean(a[,1])
mean(a[,2])
