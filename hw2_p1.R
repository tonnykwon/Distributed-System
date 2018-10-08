i = 1:4
x = 2018:2030
m = 32

h1 = function(x){
  i=1
  
  return(i*x+ x^(i-1) %% m)
}

h2 = function(x){
  i=2
  return(i*x+ x^(i-1) %% m)
}

h3 = function(x){
  i=3
  return(i*x+ x^(i-1) %% m)
}
