#' @title Apply a Box-Cox transformation for positive numbers
#' @param x Vector of numerics
#' @param lambda Box-Cox transformation parameter, varies from -5 to 5
#' @return Vector \code{x} transformed by Box-Cox

boxcox_positive <- function(x, lambda) {
  if(lambda == 0) {
    log(x)
  }
  else {
    ((x^lambda)-1)/lambda
  }
}
