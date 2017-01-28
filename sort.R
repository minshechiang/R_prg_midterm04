#Create a function: my.sort()
my.sort <- function(input_vec, decreasing=FALSE){ #預設排序由小到大
  length_input_vec <- length(input_vec)
  if(decreasing==TRUE){ #若設定排序由大到小
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
  else{ #若設定排序由小到大
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