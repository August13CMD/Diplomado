library(shiny)

# Define server logic required to draw a histogram
function(input, output) {
  
  output$distPlot <- renderPlot({
    eleccion<- input$d
    if(eleccion=="Largo del sepalo"){
      x <- iris[,1]
    } else if(eleccion=="Anchura del sepalo"){
      x <- iris[,2]
    } else if(eleccion=="largo del petalo"){
      x <- iris[,3]
    } else if (eleccion=="Anchura del petalo"){
      x<- iris[,4]
      }
    hist(x)  
  })
  output$tabla <- renderTable({
    eleccion<- input$d
    if(eleccion=="Largo del sepalo"){
      x<-iris[,1]
    } else if(eleccion=="Anchura del sepalo"){
      x<-iris[,2]
    } else if(eleccion=="Largo del petalo"){
      x<-iris[,3]
    } else if(eleccion=="Anchura del petalo"){
      x<-iris[,4]
    }
    matrix(x, nrow = 15)
  })
  
  output$resumen <- renderPrint({
    eleccion<- input$d
    if(eleccion=="Largo del sepalo"){
      x<-iris[,1]
    } else if(eleccion=="Anchura del sepalo"){
      x<-iris[,2]
    } else if(eleccion=="Largo del petalo"){
      x<-iris[,3]
    } else if(eleccion=="Anchura del petalo"){
      x<-iris[,4]
    }
    summary(x)
  })
}

