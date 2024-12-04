# Agustin Gerardo Carrera Valladares  24/09/2024
# Muestras dependientes 
# mismos individuos medidos en dos tiempos 2012 vs 2013, produccion de semillas 

tiempo <- read.csv("C:/Users/Usuario.PC17.002/Documents/mainproduccion.csv", header = TRUE)
head(tiempo)

boxplot(tiempo$Kgsem ~ tiempo$Tiempo, col= "lightblue", xlab = "Año", ylab = "Semillas (Kg)")
abline(h=10.1, col= "blue", lwd =3, lty = "dotdash")
abline(h=10.9, col= "orange", lwd=3, lty = "dotdash")

#Determinacion de las medias de Kg en ambos años 
tapply(tiempo$Kgsem, tiempo$Tiempo, mean)

#Para saber si hay diferencias solamente
t.test(tiempo$Kgsem~ tiempo$Tiempo, paired =T)

# Saber si 2013 es mayor que 2012 
t.test(tiempo$Kgsem~ tiempo$Tiempo, paired =T, alternative = "less")

