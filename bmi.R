#Create a function: bmi_calculator()
bmi_calculator <- function (h,w){
  bmi <- w/((h/100)^2)
  return(bmi)
}

#Create input vectors and data frame
heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)

#Add BMI into data frame
BMIs <- mapply(FUN=bmi_calculator, heights, weights)
heights_weights_BMIs <- cbind(heights_and_weights, BMIs)

View(heights_weights_BMIs)
