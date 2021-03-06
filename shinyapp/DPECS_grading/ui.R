library(shiny)

shinyUI(fluidPage(

  HTML('<table width=100%><tr><td valign="top">
           <H1>Grading MC Exams at the DPECS</H1>
           </td><td align="right">
           <img src="./Logo-EUR-black.png" width="200" alt="Erasmus University">
           </td></tr></table>'),
  
  sidebarLayout(
    # Sidebar panel for inputs ----
    sidebarPanel(
      
      numericInput(inputId = "n_quest",
                   label = "Number of MC Questions:",
                   value = 40),
      
      selectInput(inputId = "n_choices",
                  label = "Number of Choices:",
                  choices=c(2,3,4,5), 
                  selected = 4),
    ),
    
    mainPanel(
      uiOutput("subtitle"), 
      tabsetPanel(type = "tabs",
                  tabPanel("Table", tableOutput("view")),
                  tabPanel("Graph/Formular", uiOutput("formula"), plotOutput("graph")),
                  tabPanel("Explanation", uiOutput("explanation"), 
                           HTML("<p style='margin-top:50px;text-align:right'>
                           <i><small>(c) <a href='http://www.eur.nl/people/oliver-lindemann'>
                                O. Lindemann</a></small></i></p>"))
      )
    )
  )
))


  