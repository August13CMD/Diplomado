#¿Qué cantidad de dinero sobra al repartir 10000$ entre 3 personas?

resto<-10000 %%3
resto

#¿Es el número 4560 divisible por 3?

4560 %% 3==0

#Construya un vector con los números enteros del 2 al 87. 
#¿Cuáles de esos números son divisibles por 7?

enteros <- c(2:87)
enteros2<- enteros[enteros%%7==0]
enteros2

#Construya dos vectores, el primero con los números enteros desde 7 hasta 3, 
#el segundo vector con los primeros cinco números positivos divisibles por 5. 
#Sea A la condición de ser par en el primer vector. Sea B la condición de ser mayor que 10 en el segundo vector. 
#¿En cuál de las 5 posiciones se cumple A y B simultáneamente?

primervector <- c(7:3)
primervector
segundovector <- seq(from=5, by=5, length.out = 5)
segundovector
primervector%%2 == 0 & segundovector>10

#Consulte este enlace en el cual hay una anéctoda de Gauss niño. 
#Use R para obtener el resultado de la suma solicitada por el profesor del niño Gauss.

sumagauss <- sum(1:100)
sumagauss

#Construya un vector con los siguientes elementos: 1, -4, 5, 9, -4. 
#Escriba un procedimiento para extraer las posiciones donde está el valor mínimo en el vector.
vectornumeros<- (c(1,-4,5,9,-4))
which(vectornumeros == min(vectornumeros))

#Calcular  8!

factorial(8)

#Evaluar la siguiente suma, e elevado a la i, con i =3,4,5,6,7. 

vectorguardar <- 0
for(i in 3:7){
  vectorguardar <- vectorguardar + exp(i)
}
vectorguardar

#Evaluar la siguiente productoria log(sqrt(i)),  con i= 1, ..., 10

prod(sqrt(log(1:10)))

#Construya un vector cualquiera e inviertalo, es decir, que el primer elemento quede de último, el segundo de penúltimo y así sucesivamente. 
#Compare su resultado con el de la función rev.
nuevovector<- 1:10
nuevovector

for(i in 1:5){
  nuevovector[10+1-i] = nuevovector[i]
}
nuevovector
suma <- rev(nuevovector)
suma

#Create the vector:  1,2,3,…,19,20.

unoveinte<-1:20
unoveinte

#Create the vector:20,19,…,2,1.
veinteuno<-20:1
veinteuno

#Create the vector:  1,−2,3,−4,5,−6,…,9,−20.
sumanegativos<-0
for(i in 1:20){
  sumanegativos[i] <-  c(i*(-1)**(i+1))
}
sumanegativos

# 1Read the data set available in: https://raw.githubusercontent.com/

library(readr)
paises <- "https://raw.githubusercontent.com/fhernanb/datos/master/Paises.txt"
data <- read_table(paises)
data

#Use a code to obtain the number of variables of the data set.
ncol(data)

#Use a code to obtain the number of countries in the data set.
nrow(data)

#Which is the country with the higher population?
data[which(data$poblacion == max(data$poblacion)), ]

#Which is the country with the lowest literacy rate?
data[which(data$alfabetizacion == min(data$alfabetizacion)), ]


#Autos que tengan un rendimiento menor a 18 millas por galón de combustible.

x<-mtcars
x

x[x$mpg<18,]

#Autos que tengan 4 cilindros.
x[x$cyl==4,]

#Autos que pesen más de 2500 libras y tengan transmisión manual.
x[x$wt>2.5  x$am==1]

