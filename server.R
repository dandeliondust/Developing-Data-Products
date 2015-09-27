library(shiny)

BMI <- function(weight, height) weight / ((height/100)^2)

shinyServer(function(input, output) {
    output$heightentered <- renderText({input$height})
    output$weightentered <- renderText({input$weight})
    output$bmi <- renderText({BMI(input$weight, input$height)})
})