#' Postprocess data
#'
#' A function to perform custom post-processing on data after test and training split
#'
#' @param data
#'
#' @return data frame or tibble
#' @export
#'
postprocess_data <- function(data) {
    data |>
        dplyr::filter(temp < 40)
}
