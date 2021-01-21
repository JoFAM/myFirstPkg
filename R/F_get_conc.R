#' Get a new concenctration.
#'
#' It calculates a new concentration based on
#' a calibration curve. It uses internally the function \code{\link{calib}}.
#'
#' Here you can give more details
#'
#' Those details they can be multiple paragraphs.
#'
#' @param conc takes a numeric vector with concentrations.
#' @param OD takes the optical densities
#' @param new takes a vector with now ODs that should get a concentration.
#' @param ... currently disregarded
#'
#' @return the predictions
#'
#' @seealso \code{\link{calib}}.
#'
#' @examples
#' conc <- 1:10
#' OD <- 10:1
#' get_conc(conc, OD, 4.5)
#'
#' \dontrun{
#' get_co("error")
#' }
#'
#' @export
get_conc <- function(conc, OD, new, ... ){
  tmp <- calib(conc, OD)
  tmp[1] + new*tmp[2]
}
