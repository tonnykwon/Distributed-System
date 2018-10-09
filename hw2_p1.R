i = 1:4
x = 2018
m = 32

bloom_filter = function(x){
  result = array()
  while(length(result)==length(unique(result))){
    i=1
    m = 32
    h1 = hash_map(i,x,m)
    i=2
    h2 = hash_map(i,x,m)
    i=3
    h3 = hash_map(i,x,m)
    i=4
    h4 = hash_map(i,x,m)
    x=x+1;
    result = append(result, c(h1, h2, h3, h4))
  }
  print(result)
}

hash_map = function(i, x, m){
  return((i*x+ x^(i-1)) %% m)
}

bloom_filter(x)

fp_h = function(k,n,m){
  temp =exp(-k*n/m)
  return((1-temp)^k)
  #return(result)
}

fp_n = function(n,m, l){
  temp=(1-1/m)^n
  result = (1-temp)^l
  return(result)
}


k = 4
m = 1024
n= 80
fp_h(k,n,m)
fp_n(n,m, 3)

((1-exp(-40/1024))^4)

fp_h(k,n,m)
fp_n(n,m,3)
(1-exp(-n/m))^3
