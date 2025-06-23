test <- function(model, newdata) {
    predictions <- newdata |>
        dplyr::mutate(pred = as.numeric(predict(model, newdata))) |>
        dplyr::arrange(date)

    return(predictions)
}
