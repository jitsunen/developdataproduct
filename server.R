library(shiny)
shinyServer(function(input, output, session) 
{
  download <- reactive({
                data <- data.frame();
                if (input$fileUrl != "")
                {
                  data <- read.csv(file = input$fileUrl)
                }
                list(data=data)
              })
  output$data <- renderTable({download()$data})
  output$plots <- renderPlot({pairs(~., data = download()$data, main = "Pair-wise Scatter Plots")})
})