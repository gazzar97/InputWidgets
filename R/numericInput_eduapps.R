#' <Add Title>
#'
#' <Add Description>
#'
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @export
numericInput_eduapps <- function(inputId, language = "english",default = 0) {
  reactR::createReactShinyInput(
    inputId,
    "numericInput_eduapps",
    htmltools::htmlDependency(
      name = "numericInput_eduapps",
      version = "1.0.0",
      src = "www/InputWidgets/numericInput_eduapps",
      package = "InputWidgets",
      script = "numericInput_eduapps.js"
    ),
    default = default,
    list(language),
    htmltools::tags$span
  )
}

#' <Add Title>
#'
#' <Add Description>
#'
#' @export
updateNumericInput_eduapps <- function(session, inputId, value, configuration = NULL) {
  message <- list(value = value)
  if (!is.null(configuration)) message$configuration <- configuration
  session$sendInputMessage(inputId, message);
}
