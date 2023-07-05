library(shiny)

# Define server logic required to draw a histogram
function(input, output) {
  
    output$distPlot <- renderPlot({
      #x<- rnorm(1000, mean = input$b0, sd=input$b4)
      #hist(x, ann= F, axes = F)
      #title(main = input$b7)
      #if(input$b2){
        #axis(1)
      aux<- input$d
      if(aux=="normal"){
        x<-rnorm(input$n)
      } else if(aux=="uniforme"){
        x<-runif(input$n)
      } else if(aux=="exponencial"){
        x<-rexp(input$n, 5)
      }
      hist(x)  
      })
    output$tabla <- renderTable({
      aux<- input$d
      if(aux=="normal"){
        x<-rnorm(input$n)
      } else if(aux=="uniforme"){
        x<-runif(input$n)
      } else if(aux=="exponencial"){
        x<-rexp(input$n, 5)
      }
      matrix(x, nrow = 5)
    })
    
    output$resumen <- renderText({
      aux<- input$d
      if(aux=="normal"){
        x<-rnorm(input$n)
      } else if(aux=="uniforme"){
        x<-runif(input$n)
      } else if(aux=="exponencial"){
        x<-rexp(input$n, 5)
      }
      summary(x)
    })
 }
