myfunction <- function() { #function deceleration#
  
  x <- rnorm(100)
  mean(x)
}

second <- function(x){ #another function#
  x + rnorm((length(x)))
}

#to use function in console first you have to introduce it
#via  source("FILENAME")  .note that you should first save  the file.
#or just copy paste it. Also every change requires new sourcing.
#It is possible to source from multiple files via fallowing commands:
