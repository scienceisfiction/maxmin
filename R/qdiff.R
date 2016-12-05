#' Quantile - Quantile
#'
#' @param x numeric
#' @param probs the quantiles of interest
#' @param na.rm TRUE or FALSE: what do you want to do with NAs?
#' @param ... 9 different algorithms for computing quantiles
#'
#' @return numeric
#' @export
#'
#' @examples
#' #' set.seed(1234)
#' #' z <- rnorm(10)
#' #' qdiff(z, probs = c(0.25, 0.75), type = 1)
qdiff <- function(x, probs = c(0, 1), na.rm = TRUE, ...) {
  stopifnot(is.numeric(x))
  the_quantiles <- stats::quantile(x = x, probs = probs, na.rm = na.rm, ...)
  return(max(the_quantiles) - min(the_quantiles))
}
