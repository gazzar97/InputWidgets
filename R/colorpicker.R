#' <Add Title>
#'
#' <Add Description>
#'
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @export
colorpickerInput <- function(inputId, default = "") {
  reactR::createReactShinyInput(
    inputId,
    "colorpicker",
    htmltools::htmlDependency(
      name = "colorpicker-input",
      version = "1.0.0",
      src = "www/InputWidgets/colorpicker",
      package = "InputWidgets",
      script = "colorpicker.js"
    ),
    default,
    list(),
    htmltools::tags$span
  )
}

#' <Add Title>
#'
#' <Add Description>
#'
#' @export
updateColorpickerInput <- function(session, inputId, value, configuration = NULL) {
  message <- list(value = value)
  if (!is.null(configuration)) message$configuration <- configuration
  session$sendInputMessage(inputId, message);
}