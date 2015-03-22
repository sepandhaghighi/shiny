library(shiny)
library(UsingR)
temp<-father.son
model<-lm(sheight~fheight,data=temp)
estimate<-function(x){return(33.8866+0.5141*x)}


shinyServer(
  function(input , output){
    
    output$Predict<- renderPrint({estimate(input$t)})
    output$plot1<-renderPlot({plot(temp$fheight,temp$sheight , main = " Father- Son Height Plot", xlab="Father Height" , ylab="Son Height") })
    
  }
  
  )