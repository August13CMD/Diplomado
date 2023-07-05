#TAREA CAPITULO 2

#Construya un vector con la primeras 20 letras MAYÚSCULAS usando la función LETTERS.
mayusculas <- c(LETTERS[1:20])
mayusculas

#Construya una matriz de 10×10 con los primeros 100 números positivos pares.

matriz<- matrix(1:100*2,nrow=10, ncol=10)
matriz

#Construya una matriz identidad de dimension  3×3, recuerde que una matriz identidad tiene sólo unos en la diagonal principal y los demás elementos son cero.
matrizidentidad<- diag(3)
matrizidentidad

#Construya una lista con los anteriores tres objetos creados.
lista3<-list(mayusculas,matriz,matrizidentidad)
lista3

#Construya un marco de datos o data frame con las respuestas de 3 personas a las preguntas: 
#(a) ¿Cuál es su edad en años? 
#(b) ¿Tipo de música que más le gusta? 
#(c) ¿Tiene usted pareja sentimental estable?

edad<-c(28,31,20)
tipo_de_musica<-c("rock alternativo", "pop", "reggaeton")
pareja<-c("si","si","no")
datos<-data.frame(edad,tipo_de_musica,pareja)
datos

#¿Cuál es el error al correr el siguiente código? ¿A qué se debe?
edad <- c(15, 19, 13, NA, 20)
deporte <- c(TRUE, TRUE, NA, FALSE, TRUE)
comic_fav <- c(NA, 'Superman', 'Batman', NA, 'Batman')
matrix(edad, deporte, comic_fav)

#la matriz tiene diferente tipo de datos, por eso el código tiene error