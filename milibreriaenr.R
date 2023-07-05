El paquete caret (Classification And REgression Training) es un conjunto de funciones 
que intentan agilizar el proceso de creacion de modelos prdictivos. 
El paquete contiene herramientas para:
  
Sparación de datos (Train y Test, Cross Validation)
Pre-proceso de datos
Seleccion de variables
Ajuste de modelos por medio de remuestreo
Estimacion de la importancia de la variables
entre otras funcionalidades






install.packages("mlbench")
install.packages("e1071")
install.packages("caTools")
install.packages("caret")
install.packages("lattice")
library(ggplot2)
library(dplyr)
library(caret)
library(mlbench)
library(caTools)

set.seed(37)
setControl <- trainControl(
  method = "cv", ## Metodo de resampling
  number = 10, ## Numero de particiones
  verboseIter = TRUE ## Para imprimir el log de entrenamiento
)

fit <- train(
  price ~ . ,  ##Formula
  diamonds, ## Data
  method = "lm", ## Metodo
  trControl = setControl ##Control
)
summary(fit)

setControl <- trainControl(
  method = "cv",
  number = 10,
  verboseIter = TRUE
)

fit <- train(
  price ~ . , diamonds,
  method = "lm",
  trControl = setControl
)
data(Sonar)
train_index <- createDataPartition(Sonar$Class, 
                                   p=0.7 , 
                                   list = FALSE, 
                                   times =1)
train <- Sonar[train_index,]
test <- Sonar[-train_index,]
table(train$Class) %>% prop.table()

table(test$Class) %>%  prop.table()

nrow(train)

nrow(test)

colAUC(p,test$Class, plotROC = TRUE)
