install.packages("dslabs")
library(dslabs)
data("heights")
head(heights)



summary(heights)
methods(print)


install.packages("pryr")
library(pryr)

otype(heights)
              

isS4(heights)



create_point <- function(x, y) {
  point <- list(x = x, y = y)
  class(point) <- "Point"
  return(point)
}

print.Point <- function(p) {
  cat("Point coordinates: (", p$x, ",", p$y, ")\n")
}


point_s3 <- create_point(3, 4)

#Test
print(point_s3)



library(methods)

setClass("Point", slots = list(x = "numeric", y = "numeric"))


point_s4 <- new("Point", x = 3, y = 4)

setMethod("show", "Point", function(object) {
  cat("Point coordinates: (", object@x, ",", object@y, ")\n")
})

#test
show(point_s4)



















    
    
    
    
    
    