#* @get /plumber/v1/mean
normalMean <- function(samples=10){
  data <- rnorm(samples)
  mean(data)
}

#* @post /plumber/v1/sum
addTwo <- function(a, b){
  as.numeric(a) + as.numeric(b)
}
