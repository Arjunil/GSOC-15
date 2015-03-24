# server.R

library(shiny)
library(datasets)
library(ggplot2)

irisData<-iris

shinyServer(
  function(input, output) {
    output$testplot <- renderPlot({
      var1 <- switch(input$varx, 
                     "Sepal Length" = irisData$Sepal.Length,
                     "Sepal Width" = irisData$Sepal.Width,
                     "Petal Length" = irisData$Petal.Length,
                     "Petal Width"= irisData$Petal.Width,
                     "Species" = irisData$Species)
      
      var2 <- switch(input$vary, 
                     "Sepal Length" = irisData$Sepal.Length,
                     "Sepal Width" = irisData$Sepal.Width,
                     "Petal Length" = irisData$Petal.Length,
                     "Petal Width"= irisData$Petal.Width,
                     "Species" = irisData$Species)
      
      
      qplot(var1, var2, data=irisData, color = irisData$Species,
            xlab = input$varx, ylab = input$vary)
    })
  }
)
