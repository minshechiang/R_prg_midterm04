#Create a function: my.sd()
my.sd <- function(input_vec){
  n_vec <- length(input_vec) #樣本規模
  mean_vec <- mean(input_vec) #平均
  x_minor_mean <- vector(length = n_vec) 
  for(i in 1:n_vec){
    x_minor_mean[i] <- (input_vec[i]-mean_vec)^2
  }
  standard.deviation <- sqrt((sum(x_minor_mean))/(n_vec-1))
  return(standard.deviation)
}

#Create a input vector
test_vec <- round(runif(10)*100)

#Function call
my.sd(test_vec)
sd(test_vec)