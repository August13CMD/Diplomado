#Se hará un analisis de la base de datos de IRIS, una base de datos que ya esta cargada en los paquetes de R


data(iris) # cara cargar el dataset al workspace
names(iris)
attach(iris)
table(iris$Species)
vec<-c(1,1,1,0,0,3,3,3,3,2)
table(vec)
table(vec)/length(vec) # Frecuencia porcentual

my_mode<-function(var){
  frec.var<-table(var)
  valor<-which(frec.var==max(frec.var))  # Elementos con el valor
  names(valor)
}
my_mode(vec)
my_mode(iris$Sepal.Length)

#Tomamos un vector aleatorio de media 20 y 
#luego le agregamos un elemento aleatorio que proviene de una distribucio ́n de media mucho mayor. 
#Vemos que la media es fuertemente afectada por el ruido

vec<-rnorm(10,20,10)
mean(vec)
vec.ruid<-c(vec,rnorm(1,300,100))
mean(vec.ruid)

summary(iris)


tapply(iris$Petal.Length,iris$Species,summary)
tapply(iris$Petal.Width,iris$Species,summary)
tapply(iris$Sepal.Length,iris$Species,summary)
tapply(iris$Sepal.Width,iris$Species,summary)

cor(iris[,1:4])

hist(Sepal.Length)
hist(Sepal.Length,nclass=100)
plot(density(iris$Sepal.Length),main="Densidad de Sepal.Length")
pie(table(iris$Species))
boxplot(Sepal.Length,main="Boxplot Sepal.Length")
boxplot(Sepal.Length,Species,ylab="Sepal.Length")

#El ancho del sepalo vs el largo del sepalo
plot(Sepal.Width ,Sepal.Length, col=Species)

#Equivalente
plot(Sepal.Length, Sepal.Width,col=Species,
     pch=as.numeric(Species))

#Todos los pares de las 4 variables de irsi usando un color y un cara ́cter distinto para cada especie
pairs(iris[,1:4],pch=as.numeric(iris$Species),col=iris$Species)


