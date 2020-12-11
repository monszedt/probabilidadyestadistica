#Examen práctico segunda unidad
library(likert)
library(ggplot2)

#Usamos matriz de datos de resultados prueba pisa en 2009
#Se encuentra precargada en el paquete likert mediante comando data
data("pisaitems")

#Le damos un nuevo nombre a la matriz de datos para su mejor uso
pisa<-pisaitems

#Exploramos matriz de datos
names(pisa)
typeof(pisa)
str(pisa)


#Visualizamos los valores que componen una variable
head(pisa$CNT)
head(pisa$ST24Q01)

#buscamos valores perdidos
anyNA(pisa)
#Número total de datos perdidos en la matriz de datos
sum(is.na(pisa))
#Eliminación de filas con datos perdidos 
#Creamos nueva matriz
pisa2<-na.omit(pisa)
#Verificamos que la matriz no tenga datos perdidos
anyNA(pisa2)

head(pisa2)

#Empezamos a trabajr con la matriz de datos

#------------Variable 33--------------------
#Agrupamiento de items
names(pisa2)
items33<-pisa2[,2:5]
head(items33[1:6,1:6])

#Renombramos la respuesta
levels(items33)<-c("Completamente en desacuerdo",
                   "En desacuerdo",
                   "De acuerdo",
                   "Completamente de acuerdo")

#Colocar los nombres a los indicadores
names(items33)<-c("La escuela ha hecho poco para prepararme
                  para la vida adulta cuando deje la escuela",
                  "La escuela ha sido una pérdida de tiempo",
                  "La escuela me ha ayudado a darme confianza para tomar decisiones",
                  "La escuela me ha enseñado cosas que podrían ser útil en un trabajo")
Q133<-likert(items33)

#Generamos el gráfico de barras
plot(Q133,type = "bar",centered=FALSE)

#Generar grafico de barras con porcentajes
plot(Q133,type = "bar",centered=TRUE,plot.percents=TRUE)

#Generar grafico de barras ordenado
plot(Q133,group.order = colnames(items33))

#Generar grafico de densidad
likert.density.plot(Q133,facet = TRUE,bw=0.5,
                    legend = "Pensando em lo que has aprendido en la escuela")

#Generar gráfico de calor
plot(Q133,type = "heat")


#-----------------Variable 34 -----------------------------
#Agrupamiento de items
names(pisa2)
items34<-pisa2[,2:6]
head(items34[1:6,1:6])

#Renombramos las etiquetas de respuesta
levels(items34)<-c("Completamemte en desacuerdo",
                   "En desacuerdo",
                   "De acuerdo",
                   "Completamente de acuerdo")

#Colocar los nombres a los indicadores

names(items34)<-c("Me llevo bien con la mayoría de mis profesores",
                  "La mayoría de mis profesores están interesados en mi bienestar",
                  "La mayoría de mis profesores realmente escuchan lo que tengo que decir",
                  "Si necesito ayuda adicional, la recibiré de mis maestros",
                  "La mayoría de mis maestras me tratan de manera justa")
Q34<-likert(items34)

#Generamos el gráfico de barras 
plot(Q34,type = "bar",centered=FALSE)

#Generamos el gráfico de densidad
likert.density.plot(Q34,facet = TRUE,bw=0.5,
                    legend = "Declaraciones sobre profesores")

#Generamos el gráfico de calor
plot(Q34,type = "heat")

#Generamos gráfico de barras con porcentajes
plot(Q34,type = "bar",centered=TRUE,plot.percents=TRUE)

#Generamos gráfico de barras ordenado
plot(Q34,group.order = colnames(items34))
