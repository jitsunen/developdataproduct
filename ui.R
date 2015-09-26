library(shiny)

shinyUI(fluidPage(
  titlePanel("Data Explorer"),
  helpText("An application to download and show summary plots of data. Please enter the URL of a CSV file which is accessible over the Internet. The file must be downloadable over http, not https."),
  textInput("fileUrl", "Data CSV File URL", width = "80%", value="http://vincentarelbundock.github.io/Rdatasets/csv/datasets/HairEyeColor.csv"),
  submitButton(text = "Download and Analyze", icon("download")),
  mainPanel(tabsetPanel(
    tabPanel("Raw Data", tableOutput("data")),
    tabPanel("Scatter Plots", plotOutput("plots")),
    type="tabs"
  )),
  theme="cosmo.css"
))
