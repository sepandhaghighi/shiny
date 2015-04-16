library(shiny)

shinyUI(pageWithSidebar(
  headerPanel(h2("Son Height Prediction With Linear Model (By Sepand Haghighi)")),
  sidebarPanel(
    radioButtons('button',"Please Choose",c("Centimeter"="A",
                                            "Inch"="B")),
    numericInput("l",'Please Enter Father Height',170,min=100 , max = 250 , step = 0.5),
    submitButton("Enter"),
    h4("Linear Model Diagram :"),
    plotOutput("plot2")
    
    
    ),
  
  mainPanel(
    

    h3("Prediction Value : "),
    verbatimTextOutput("Predict"),
    plotOutput("plot1"),
    h3("For Work With This App Only Follow This Simple 2 Step:"),
    h5("1- Type Father Height On The TextBox"),
    h5("2- Click On Enter")
    
    
    
    
    )
  
  
  
  
  ))
  
  
        
  
  
  
  
  
  
  
  
  
