K= 5
N = 100
loop = 1000
a = matrix(0, ncol=N, nrow=loop)

for(j in 1:nrow(a)){
  for(i in 1:ncol(a)){
    whole_list= seq(1,N)
    # basic k
    temp_list = c(i-1:K, i+1:K)
    temp_list = ifelse(temp_list %% N==0, N, temp_list%%N)
    a[j,temp_list] = a[j,temp_list]+1
    
    # random k
    temp_list = append(temp_list,i)
    diff_list = setdiff(whole_list, temp_list)
    k_list = sample(diff_list, K)
    a[j,k_list ]= a[j,k_list]+1
  }
}

2*K + (K/(N-2*K-1))*(N-2*K-1)
mean(a)
