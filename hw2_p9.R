N= 50
K= 1
Q=33
result=1
for(i in 1:30000){
  a= sample(N,Q)
  b= sample(N,Q)
  c= sample(N,Q)
  
  temp1 = intersect(a,b)
  temp2 = intersect(temp1, c)
  result = append(result, length(temp2))
}

all(result>0)

N=5
K=1
2*(N+K)/3
