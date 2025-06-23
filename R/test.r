#' Run predictions from a model object
#'
#' A function to return model prediction on new data
#'
#' @param model a trained model
#' @param newdata new data such as a test or validation set
#'
#' @return data frame or tibble
#' @export
#'
test <- function(model, newdata) {
    predictions <- newdata |>
        dplyr::mutate(pred = as.numeric(predict(model, newdata))) |>
        dplyr::arrange(date)

    return(predictions)
}
