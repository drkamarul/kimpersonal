#' @title Exploratory data analysis for numerical variables
#' @description Will generate boxplot and summary data
#' @param var_num a numerical variable
#' @param var_cat a categorical variable
#' @param dataset the dataset
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso
#'  \code{\link[ggplot2]{ggplot}}
#'  \code{\link[dplyr]{group_by}},\code{\link[dplyr]{summarise}}
#' @rdname eda4num
#' @export
#' @importFrom ggplot2 ggplot
#' @importFrom dplyr group_by summarise
eda4num <- function(var_num, var_cat, dataset) {
  plot1 <- dataset %>%
    ggplot2::ggplot(aes(x = factor({{var_cat}}), y = {{var_num}})) +
    geom_boxplot()
  print(plot1)

  dataset %>%
    dplyr::group_by({{var_cat}}) %>%
    dplyr::summarise('average_{{var_num}}' := mean({{var_num}}))
}
