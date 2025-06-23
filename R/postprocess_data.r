postprocess_data <- function(data) {
    data |>
        dplyr::filter(temp < 40)
}
