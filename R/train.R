#' Fit Water Temperature Model
#'
#' This is the model that resulted from all our important research...
#'
#' @param data input data frame of water temperature readings see details.
#'
#' @details Model dataset is described in sydney_water_temp
#'
#' @return GAM model object
#' @export
train <- function(data) {
  # Do all columns exist?
  stopifnot(all(c("temp", "hour", "beach") %in% colnames(data)))

  # Fit model
  mod_gam <- mgcv::gam(temp ~ s(month, bs = "cc", k = 12) + s(hour) + s(beach, bs = "re"),
    data = data
  )

  return(mod_gam)
}
