library(shiny)

# Define UI for application that draws a histogram
fluidPage(

    # Titulo que tendra la pagina creada por shiny
    titlePanel("Hola Augusto"),

    
    # Me permite agregar los cuadros de interacción del lado izquiero de mi pagina webb
    sidebarLayout(
        
       # Cada uno de mis cuadros de interacción va definido con un sidebarPanel
        sidebarPanel(
            #sliderInput("b0",
                        "media",
                        #min = 1,
                        #max = 50,
                        #value = 30),
            #actionButton("b1", label = "Boton de accion"),
            #checkboxInput("b2", label = "Boton de check simple"),
            #checkboxGroupInput("b3", label = "Boton de check multiple", 
                               #choices = c("azul", "amarillo", "rojo")),
            #numericInput("b4", "Desviacion Estandar", value = 10),
            #radioButtons("b5", "calidad", choices = c("local", "visitante")),
            #selectInput("b6", "calidad", choices = c("local", "visitante")),
            #textInput("b7", "Nombre del grafico", value = ""),
            #fileInput("b8", "cargue su archivo")
            numericInput("n", "Cantidad de numeros aleatorios", value = 100),
            radioButtons("d", "seleccione la distribucion", c("normal", "uniforme", "exponencial"))
        ),

        # El mainPanel es lo que aparecerá en en el cuadro principal de la pagina webb
        # Captura salidas que provienen del server 
        mainPanel(
          tabsetPanel(
            tabPanel("histograma", plotOutput("distPlot")),
            tabPanel("tabla", tableOutput("tabla")),
            tabPanel("summary", verbatimTextOutput("resumen"))
          )
        )
    )
)
