library(shiny)

shinyUI(fluidPage(
  headerPanel(title="Shiny File Upload"),
  sidebarLayout(
    sidebarPanel(
      fileInput("file","Upload file"),
      h5("Max file size llowed is 5Mbs"),
      radioButtons("sep","separator",choices  =c(Comma = ",",Period = ".",Tilde = "~",minus = "-")),
      checkboxInput("header","Header")
    ),
    mainPanel(
      tableOutput("input_file")
    )
  )
))