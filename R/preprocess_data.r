#' Preprocess data
#'
#' A function to perform custom pre-processing on raw data.
#'
#' @param data
#'
#' @return data frame or tibble
#' @export
#'
preprocess_data <- function(data) {
    data |>
        janitor::clean_names() |>
        dplyr::transmute(
            temp = water_temperature_c,
            beach = swim_site,
            date = date,
            time = time
        ) |>
        dplyr::mutate(
            date = dmy(date),
            month = month(date),
            hour = hour(time),
            month_lab = month(date, label = TRUE),
            beach = as.factor(beach)
        )
}
