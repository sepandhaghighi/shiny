library(shiny)
library(UsingR)
temp<-father.son
model<-lm(sheight~fheight,data=temp)
estimate<-function(x){return(33.8866+0.5141*x)}
inch2cm<-function(x){return(x*2.54)} 
cm2inch<-function(x){return(x*0.393701)}
plot_input<-function(data,type){
  switch(type,
         A=inch2cm(estimate(cm2inch(data))),
         B=estimate(data))
}
shinyServer(
  function(input , output){
  ty<-reactive(input$button)  
 output$Predict<- renderPrint({plot_input(input$l,ty())})

    output$plot1<-renderPlot({plot(temp$fheight,temp$sheight , main = " Father- Son Height Plot", xlab="Father Height" , ylab="Son Height")
                              abline(model)
                              })
    output$plot2<-renderPlot({plot(model)})
    
    
  }
  
  )