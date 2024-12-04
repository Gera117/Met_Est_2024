# Regresion lineal

library(readr)
erupciones <- read_csv("erupciones.csv")
View(erupciones)

plot(erupciones$waiting, erupciones$eruptions,
     pch = 19, col = "black",
     xlab = "tiempo espera (min)", 
     ylab = "duracion (min)")

range(erupciones$eruptions)
range(erupciones$waiting)

cor.test(erupciones$eruptions, erupciones$waiting)

#Revisar si existe una relacion lienal entre los 2 varaibles 
cor.test(erupciones$eruptions, erupciones$waiting)

#la pregunta: podemos predecir el tiempo de la erupcion en base
#al tiempo de espera entre los 2 erupciones consecutivas 

gy.lm <- lm(erupciones$eruptions ~ erupciones$waiting)
lm(erupciones$eruptions ~ erupciones$waiting)

summary(gy.lm)

# Graficar la linea de tendencia central 
plot(erupciones$waiting, erupciones$eruptions,
     pch = 19, col = "black",
     xlab = "tiempo espera (min)", 
     ylab = "duracion (min)")
abline(gy.lm, col = "red", lw = 3)
text(50, 4, "y = -1.87 + 0.075 * x")

# Agregar en la table el valor predicho
erupciones$predicho <- gy.lm$fitted
erupciones$yprima <- -1.874016 + 0.075628 * erupciones$waiting
erupciones$residual <- gy.lm$residuals^2

yprima <- c(70, 75, 82)
-1.874016 * yprima
