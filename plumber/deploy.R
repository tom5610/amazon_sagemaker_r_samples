library(plumber)

# the inference function 
inference <- function(x){
  print(paste('input:', x))
  output <- runif(n=1,min=0,max=10)
  print(paste('output:', output))
  output
}

app <- plumb('endpoints.R')
app$run(host='0.0.0.0', port=8080)
