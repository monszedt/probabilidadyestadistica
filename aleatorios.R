#Ejercicios

#1.1- Calcula el tamaño de muestra para una poblacion de 
#83 alumnas y alumnos que se encuentran en primer grado
#de la Licenciatura en Educación Primaria de la BENV.

LEP1<-c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
        11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
        41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
        51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
        61, 62, 63, 64, 65, 66, 67, 68, 69, 70,
        71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
        81, 82, 83)
coefint1=c(LEP1)
t.test(coefint1)

#1.2.- Una vez que obtengas el tamaño de la muestra, 
#selecciona el número de lista de las personas que formaran
#parte de la muestra.
sample(1:83,42, replace = FALSE)

#1.3.- Crea un vector llamado muestra con los números de 
#lista de las personas que forman parte de la muestra.
LEP1_muestra<-c(57, 33, 10, 61, 21, 40, 34, 22, 52, 78, 23,
                62, 30, 70, 54, 44, 49, 26, 32, 69, 56, 11,
                82, 4, 6, 24, 67, 9, 76, 35, 55, 20, 29,
                2, 16, 66, 13, 17, 8, 14, 19, 60)

#2.- Repite el ejercicio anterios ahora para una poblacion
# de 90 alumnas y alumnos de integran el segundo año de la
#licenciatura en Educación Primaria de la BENV.

LEP2<-c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
        11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
        41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
        51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
        61, 62, 63, 64, 65, 66, 67, 68, 69, 70,
        71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
        81, 82, 83, 84, 85, 86, 87, 88, 89, 90)
coefint_2=c(LEP2)
t.test(coefint_2)

sample(1:90,42, replace = FALSE)

LEP2_muestra<-c(42, 24, 11, 4, 25, 81, 45, 57, 19, 22, 12, 55, 63, 14, 83,
                38, 71, 75, 64, 84, 30, 17, 43, 42, 48, 69, 74, 80, 32, 87,
                72, 49, 5, 51, 7, 1, 37, 46, 67, 16, 85, 35)

#3.- Determina el número e identifíca a las personas que participarán
#en un estudio de seguimiento de egresados de la generación
#2015-2019 de las 5 licenciaturas de la BENV.

#Primaria: 78 personas egresadas.
LEP<-c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
       11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
       21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
       31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
       41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
       51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
       61, 62, 63, 64, 65, 66, 67, 68, 69, 70,
       71, 72, 73, 74, 75, 76, 77, 78)
coefint<-c(LEP)
t.test(coefint)
sample(1:78,39, replace = FALSE)

LEP_muestra<-c(61, 51, 18, 19, 13, 63, 65, 11, 14, 8, 60, 57, 25, 55, 59,
               4, 35, 12, 23, 53, 16, 20, 75, 15, 29, 28, 3, 26, 3, 26, 32, 70,
               10, 41, 56, 34, 69, 39, 50, 21, 6)

#Preescolar: 84 personas egresadas.
LEPR1<-c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
         11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
         21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
         31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
         41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
         51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
         61, 62, 63, 64, 65, 66, 67, 68, 69, 70,
         71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
         81, 82, 83, 84)
coefint_3=c(LEPR1)
t.test(coefint_3)
sample(1:84,42, replace = FALSE)

LEPR1_muestra<-c(77, 46, 10, 76, 54, 84, 17, 32, 42, 4, 13, 2, 50, 59, 56,
                 55, 41, 19, 66, 43, 68, 40, 28, 45, 61, 35, 70, 30, 26, 8,
                 47, 21, 39, 37, 44, 1, 51, 7, 33, 20, 22, 62)

#Física: 35 personas egresadas.
LEF_1<-c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
         11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
         21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
         31, 32, 33, 34, 35)
coefint_4=c(LEF_1)
t.test(coefint_4)
sample(1:35,18, replace = FALSE)

LEF_1_muestra<-c(33, 15, 30, 5, 23, 28, 10, 26, 9, 35, 21, 14, 7, 2, 6,
                 4, 20, 25)

#Telesecundaria: 83 personas egresadas.
LET_1<-c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
         11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
         21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
         31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
         41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
         51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
         61, 62, 63, 64, 65, 66, 67, 68, 69, 70,
         71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
         81, 82, 83)
coefint_5=c(LET_1)
t.test(coefint_5)
sample(1:83,42, replace = FALSE)

LET_1_muestra<-c(32, 17, 54, 38, 1, 4, 3, 51, 29, 62, 55, 67, 47, 66, 31,
                 75, 44, 27, 81, 50, 57, 14, 46, 82, 13, 39, 19, 60, 58, 12,
                 37, 76, 71, 6, 61, 68, 83, 35, 41, 72, 48, 79)

#Especial: 25 personas.
LEE_1<-c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
         11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
         21, 22, 23, 24, 25)
coefint_6=c(LEE_1)
t.test(coefint_6)
sample(1:25,13, replace = FALSE)

LEE_1_muestra<-c(9, 24, 16, 18, 2, 19, 5, 6, 22, 4, 23, 10, 21)
