#' checks how many values in a variable in a df are NA
#'
#' @param dataset the dataframe where the variable lives
#' @param variable  the variable to check
#'
#' @return count of NA values in variable
#'
#' @import dplyr
#'
#' @export

check_na <- function(dataset, variable) {
  #num_na <- sum(is.na(dataset${{variable}}))
  num_na <- dataset %>%
    summarise(num_na = sum(is.na({{variable}}))) %>%
    pull(num_na)
  return(num_na)
}
