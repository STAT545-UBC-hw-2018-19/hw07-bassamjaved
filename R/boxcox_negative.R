#' @title Apply a Box-Cox transformation for negative numbers
#' @param x Vector of numerics
#' @param lambda1 Transformation exponent, varies from -5 to 5
#' @param lambda2 Transformation exponent, varies from -5 to 5
#' @return Vector \code{x} transformed by Box-Cox

boxcox_negative <- function(x, lambda1, lambda2) {
  if(lambda1 == 0) {
    log(x + lambda2)
  }
  else {
    (((x+lambda2)^lambda1-1))/lambda1
  }
}
