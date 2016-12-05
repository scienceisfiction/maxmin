#' Max - Min
#'
#' Combines baseR functions of max - min. Later will build into another, more generalized function...
#'
#' @param x numeric
#'
#' @return numeric
#' @export
#'
#' @examples
#' #' max_min_min(iris$Sepal.Length), max_min_min(iris$Petal.Length)
max_min_min <- function(x) {
  if(!is.numeric(x)) {
    stop('I am so sorry, but this function only works for numeric input!\n',
         'You have provided an object of class: ', class(x)[1])
  }
  max(x) - min(x)
}
