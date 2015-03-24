# ui.R
library(shiny)
shinyUI(fluidPage(
  titlePanel("Inspect Iris Dataset"),
  
  sidebarLayout(
    
    sidebarPanel(
      helpText("Visual inspection of the iris dataset using ggplot2"),
      
      selectInput("varx", 
                  label = "Choose x axis variable",
                  choices = c("Sepal Length", "Sepal Width",
                              "Petal Length", "Petal Width", "Species"),
                  selected = "Sepal Length"),
      selectInput("vary", 
                  label = "Choose y axis variable",
                  choices = c("Sepal Length", "Sepal Width",
                              "Petal Length", "Petal Width", "Species"),
                  selected = "Sepal Width")
      
      
    ),
    
    mainPanel(plotOutput("testplot"))
  )
))