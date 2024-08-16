#' Storm Runoff
#' 
#' This function calculates the volume of stormwater (in cubic feet) expected for a watershed.
#'
#' @param a watershed area (acres)
#' @param ia fraction of the watershed that is considered "impervious" (unitless)
#'
#' @return
#' @export
#'
#' @examples
#' predict_runoff(0.25, 400)
predict_runoff <- function(ia, a) {
  rv <- 0.05 + 0.9 * ia
  runoff <- 3630 * rv * a
  return(runoff)
}

