#' The function calib
#'
#' SOme more explanation
#'
#' @section Warning:
#' This function is not exported.
#'
#' @param conc desc
#' @param OD desc
#'
calib <- function(conc, OD){

  tmp <-data.frame(conc, OD)
  coef(lm(conc ~ OD, data = tmp))
}
