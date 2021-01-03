#' @title Convert type of variables
#' @description Convert a variable from one type to another type
#' @param data dataset
#' @param from type of variable to be converted from
#' @param to type of variable to be converted to
#' @return different type of variable
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso
#'  \code{\link[rlang]{nse-defuse}}
#'  \code{\link[dplyr]{mutate}}
#' @rdname convert_all_variables
#' @export
#' @importFrom rlang enquo
#' @importFrom dplyr mutate
convert_all_variables <- function(data, from, to) {
  #a = dataset
  #b = from
  #c = to
  from <- rlang::enquo(from)
  to <- rlang::enquo(to)
  data %>%
    dplyr::mutate(across(where(!!from), !!to))

}
