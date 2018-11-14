#' @title Apply a Box-Cox transformation
#' @param x Vector of numerics
#' @param lambda1 Transformation exponent, varies from -5 to 5
#' @param lambda2 Transformation exponent, varies from -5 to 5 (only for negative x)
#' @return Vector \code{x} transformed by Box-Cox family of functions
#' @description This function performs a transformation of data according to the
#' Box-Cox transformation for statistical data.
#' The function passes negative values of x to Box-Cox negative functions,
#' and postive values of x to Box-Cox positive functions.
#' @export

boxcox <- function(x, lambda1, lambda2 = 0) {
  if(!is.numeric(x)){
    stop("x is not numeric")
  }

  if(lambda1 > 5 | lambda1 < -5) {
    stop("lambda1 out of bounds (-5 < lambda1 < 5)")
  }

  if(lambda2 > 5 | lambda2 < -5) {
    stop("lambda2 out of bounds (-5 < lambda2 < 5)")
  }

  if(x < 0) {
    boxcox_negative(x, lambda1, lambda2)
  }
  else {
    boxcox_positive(x, lambda1)
  }
}
