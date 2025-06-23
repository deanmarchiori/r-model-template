preprocess_data <- function(data) {
    data |>
        dplyr::transmute(
            temp = `Water temperature (°C)`,
            beach = `Swim site`,
            date = Date,
            time = Time
        ) |>
        dplyr::mutate(
            date = dmy(date),
            month = month(date),
            hour = hour(time),
            month_lab = month(date, label = TRUE),
            beach = as.factor(beach)
        )
}
