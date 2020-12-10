#Análisis de datos en escala Likert

install.packages("likert")
install.packages("ggplot2")
library(likert)
library(ggplot2)

#para este ejercicio vamos a utilizar la matriz de datos
#de los resultados de la prueba PISA en 2009
#que se encuentra precargada en el paquete likert
#mediante el comando data
data("pisaitems")

#Le damos un nuevo nombre a la matriz de datos
#para su mejor uso
pisa<-pisaitems

#Exploramos la matriz de datos

names(pisa)
typeof(pisa)
str(pisa)


#Visualizamos los valores que componen una variable
head(pisa$CNT)
head(pisa$ST24Q01)

#buscamos los valores perdidos
anyNA(pisa)
#numero total de datos perdidos en la matriz de datos
sum(is.na(pisa))
#Eliminación de filas con datos perdidos
#y creamos una nueva matriz
pisa2<-na.omit(pisa)
#Verificamos que la nueva matriz no tenga valores perdidos
anyNA(pisa2)

head(pisa2)

#Empezamos a trabajr con nuestra nueva matriz de datos


#--------VARIABLE 24--------
#Agrupamiento de items
names(pisa2)
items24<-pisa2[,2:12]
head(items24[1:6,1:6])

#Renombramos las etiquetas de respuesta
levels(items24)<-c("completamente en desacuerdo",
                   "En desacuerdo",
                   "De acuerdo",
                   "Completamente de acuerdo")
#colocar los nombres a los indicadores
names(items24)<-c("Leo si es necesario",
                  "Me gusta hablar de libros con otras personas",
                  "Encuentro difícil terminar un libro",
                  "Me siento feliz si recibo un libro como regalos",
                  "Para mi, leer es una perdida de tiempo",
                  "Disfruto ir a una libreria o biblioteca",
                  "Leo solo para obtener informacion que necesito",
                  "No puedo estar sentando leyendo por mas de 5 minutos",
                  "Me gusta expresar mi opinion sobre un libro cuando lo he leido",
                  "Me gusta intercambiar libros con mis amigas-os")
b124<-likert(items24)

#Generamos el gráfico de barras
plot(b124,type = "bar",centered=FALSE)

#Gráfico de barras con porcentajes
install.packages("plyr")
library(plyr)

plot(b124,type = "bar",centered=TRUE,plot.percents=TRUE)

#Gráfico de barras ordenado
plot(b124,group.order=colnames(items24))

#Gráfico de densidad
likert.density.plot(b124,facet=TRUE,bw=0.5,
                    legend="Gráfico de barras")

#Grafico de calor
plot(b124,type = "heat")

#----- Variable 25-----

#agrupamiento de items
items25<-pisa2[,substr(names(pisa2),1,5)=='ST25Q']


#identificar las respuestas de agrupamiento
#y generamos una nueva variable.
names(items25)<-c("Magazines","Comic books","Fiction",
                  "Non-fiction books","Newspapers")
b125<-likert(items25)

#visualizamos los niveles en los que se agrupan
#los indicadores
head(b125)

#Generamos el gráfico de barras de las respuestas el conjunto
plot(b125,type = "bar",centered=FALSE)

#Grafico de barras con porcentajes

plot(b125,type = "bar",centered=TRUE,plot.percentes=TRUE)


#Grafico de media y sd
#Activar la funcion plot.likert
#se encuentra en un script alterno

plot.likert(as.numeric(pisa2$ST24Q01),
            left="Completamente en desacuerdo",
            right="Completamente de acuerdo",
            plot.median=TRUE,
            plot.sd=TRUE)
