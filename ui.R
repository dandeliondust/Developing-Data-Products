library(shiny)
shinyUI(fluidPage(
    titlePanel("Calculate Your BMI!"),
    sidebarLayout(
        sidebarPanel(
            numericInput("height", h3("Enter Your Height in cm"), 70, min=70),
        
            numericInput("weight", h3("Enter Your Weight in kg"), 10, min=10),
            
            submitButton("Calculate!")
        ),
        mainPanel(
            h2("Body Mass Index (BMI)"),
            p(paste("Your height",":",sep="")),textOutput("heightentered"),
            br(p(paste("Your weight",":",sep="")),textOutput("weightentered")),
            h4(paste("Your BMI","=")), h3(strong(textOutput("bmi"))),
            
            
            
            h3("Intepretation"),
            p(paste("BMI below 18.5","=","Underweight",sep=" ")),
            p(paste("BMI between 18.5 and 24.9","=","Healthy Weight",sep=" ")),
            p(paste("BMI between 25.0 and 29.9","=","Overweight",sep=" ")),
            p(paste("BMI over 29.9","=","Obese",sep=" "))
        )
)))