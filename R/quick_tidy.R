#' @title Linear regression outputs
#' @description Will run linear regression, then tidy the outputs
#'     and then glance
#' @param a formula for linear model
#' @param b dataset
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso
#'  \code{\link[broom]{reexports}}
#' @rdname do_linear
#' @export
#' @importFrom broom tidy glance
do_linear <- function(a, b){
  mod <- lm(as.formula(a), data = b)
  print(broom::tidy(mod))
  print(broom::glance(mod))
}
