#Ejercicios 3er examen parte II

#Ejemplo 1
#a) p(x<40)
pnorm(40,mean = 30,sd=4,lower.tail = TRUE)

#b) P(x>21)
pnorm(21,mean = 30,sd=4,lower.tail = TRUE)

#c) p(30<x<35)
pnorm(35,mean = 30,sd=4,lower.tail = TRUE)-pnorm(30,mean = 30,sd=4,lower.tail = TRUE)


#Ejercicio para examen 1

#a)	P (x<75)
pnorm(75,mean = 45,sd=2,lower.tail = TRUE)

#b)	P (x>13)
pnorm(13,mean = 45,sd=2,lower.tail = TRUE)

# c)	P (60<x<82)
pnorm(82,mean = 45,sd=2,lower.tail = TRUE)-pnorm(60,mean = 45,sd=2,lower.tail = TRUE)


#Ejemplo 2

#gráfico
hist(rnorm(1000,500,100),col = "blue")
abline(v=585,col=5)

#Planteamiento del problema
pnorm(585,mean = 500,sd=100)


#Ejercicio para examen 2

#gráfico
hist(rnorm(2600,1000,100),20,col = "red")
abline(v=1185,col=3)

#Planteamiento del problema
pnorm(1185,mean = 1000,sd=100)



#Ejercicio t-test prueba hipótesis

set.seed(10)
x<-rnorm(100,10)
Media<-10
test<-t.test(x,mu=Media)
print(test)



