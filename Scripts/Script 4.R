#Prueba de t de una muestra 
#Realizar la comparacion de una muestra experimental vs una muestra 
#teoria 

library(readxl)
Datos_raw <- read_excel("Datos raw.xlsx", 
  sheet = "Datos_Raw")
View(Datos_raw)

Datos_raw <- read.csv("Datos raw.xlsx", header = T)

#prueba de la normalidad de datos de las semillas
shapiro.test(Datos_raw$Peso)
#primera visualizacion de los datos

# ejemplo #1 --------------------------------------------------------------

boxplot(Datos_raw$Peso,
        col = "yellow")
abline(h =6.2,col= "red",lwd =3, lty = "dotdash")
abline(h =5.7, col= "green", lwd =3, lty ="dotdash")

t.test(Datos_raw$Peso, mu = 6.2)
#Existen diferencias entre el peso observado y el peso de
#media teoretica
#Aceptamos la hipoteis  alternativa 


# ejemplo #2 --------------------------------------------------------------

#ahora la media teoretica es de 5.85
boxplot(Datos_raw$Peso,
        col = "yellow")
abline(h =5.85,col= "red",lwd =3, lty = "dotdash")
abline(h =5.7, col= "green", lwd =3, lty ="dotdash")

t.test(Datos_raw$Peso, mu = 5.85)
# ejemplo #3 --------------------------------------------------------------

#ahora la media teoretica es de 5.78

boxplot(Datos_raw$Peso,
        col = "yellow")
abline(h =5.78,col= "red",lwd =3, lty = "dotdash")
abline(h =5.7, col= "green", lwd =3, lty ="dotdash")

t.test(Datos_raw$Peso, mu = 5.78)
t.test(Datos_raw$Peso, mu = 5.78, alternative = "less")


