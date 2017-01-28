#Create a function: my.sort()
my.sort <- function(input_vec, decreasing=FALSE){ #�w�]�ƧǥѤp��j
  length_input_vec <- length(input_vec)
  if(decreasing==TRUE){ #�Y�]�w�ƧǥѤj��p
    for (i in 1:(length_input_vec - 1)){
      for (j in (i+1):length_input_vec){
        if(input_vec[i] < input_vec[j]){
          temp_i <- input_vec[i]
          input_vec[i] <- input_vec[j]
          input_vec[j] <- temp_i
        }
      }
    }
  return(input_vec)
  }
  else{ #�Y�]�w�ƧǥѤp��j
    for (i in 1:(length_input_vec - 1)){
      for(j in (i+1):length_input_vec){
        if(input_vec[i] > input_vec[j]){
          temp_i <- input_vec[i]
          input_vec[i] <- input_vec[j]
          input_vec[j] <- temp_i
        }
      }
    }
  return(input_vec)
  }
}


#Create a input vector
test_vec <- round(runif(10)*100)

#Function call
asc_vec <- my.sort(test_vec)
dsc_vec <- my.sort(test_vec, decreasing=TRUE)