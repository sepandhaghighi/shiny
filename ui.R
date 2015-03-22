library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Son Height Prediction With Simple Linear Model"),
  
  sidebarPanel(
    
    numericInput("t",'Please Enter Father Height',170,min=100 , max = 250 , step = 0.5),
    submitButton("Enter"),
    h3("For Work With This App Only Follow This Simple 2 Step :"),
    h5("1- Type Father Height On The TextBox"),
    h5("2- Click On Enter")
    
    
    
    
    ),
  
  mainPanel(
    

    h3("Prediction Value :"),
    verbatimTextOutput("Predict"),
    plotOutput("plot1")

    
    
    )
  
  
  
  
  ))
  
  
        
  
  
  
  
  
  
  
  
  
