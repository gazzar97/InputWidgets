library(shiny)
library(InputWidgets)

ui <- fluidPage(
  titlePanel("reactR Input Example"),
  span(style="display:inline-block;",
  numericInput_eduapps("textInput","arabic",0)),
  textOutput("textOutput")
)

server <- function(input, output, session) {
  output$textOutput <- renderText({
    #print(input$textInput)
    x <- paste(input$textInput)
    sprintf("You entered: %s", x)

  })
}

shinyApp(ui, server)
