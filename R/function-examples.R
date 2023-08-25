#' Prints some example code for things I often forget how to do
#'
#' @param x a string with the example I am looking for
#'
#' @return example code
#'
#' @import glue
#'
#' @export

print_example <- function(x) {
  if(x == "axis" | x == "axes") {
    print("discrete variable: scale_{x/y}_discrete(breaks = c({list all desired tick labels}))")
    print("continuous variable: scale_{x/y}_continuous(n.breaks = {# of breaks})")
    print("date variable: scale_{x/y}_date(date_labels = '%d %b %y'{or whatever format}, date_breaks = '1 day'{or whatever breaks})")
    print("tilt axis labels: theme(axis.text.{x/y} = element_text(angle = 60, hjust = 1))")
    print("remove legend title: labs(fill/color=element_blank())")
  } else if(x == "count nas"){
    print("mean(is.na(data$column_name))")
  } else{
    print("invalid entry, try one of these:")
    get_examples()
  }
}

#' Returns the valid examples
#'
#' @return a print statement with the valid example names
#'
#' @export
get_examples <- function() {
  print("axes, count nas")
}
