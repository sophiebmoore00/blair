#' Returns color palettes
#'
#' @param palette a palette name
#'
#' @return a color palette of hex codes in vector form
#'
#' @import dplyr
#' @import glue
#' @export

palettes <- function(palette) {
  if(palette == "one") {
    return(c("#246B9E", "#16324a", "#C9A646", "#C96552", "#E7CBA9"))
  } else if(palette == "two") {
    return(c("#042278", "#a87fff", "#d60542", "#3267d4", "#8c94ac", "#31ddc1"))
  } else if(palette == "blues") {
    return(c("#1b667e", "#548ea3", "#45b4d4", "#99d6e6", "#dce4ec"))
  } else{
    #return(glue("invalid entry, try one of these: ", get_palettes()))
    print("invalid entry, try one of these:")
    get_palettes()
  }
}

#' Returns the valid palettes
#'
#' @return a print statement with the valid palette names
#'
#' @export
get_palettes <- function() {
  print("one, two, blues")
}
