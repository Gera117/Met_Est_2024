library(repmis)

conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

View(conjunto)

conjunto$Clase  <- as.factor(conjunto$Clase)

conjunto$Especie <- as.factor(conjunto$Especie)

summary(conjunto)

boxplot(conjunto$Altura ~ conjunto$Especie,
        ylab = "Especie",
        xlab = "Altura",
        col = "red")

boxplot(conjunto$Vecinos ~conjunto$Especie,
        ylab = "Especie",
        xlab = "Vecinos",
        col = "green")

boxplot(conjunto$Diametro ~ conjunto$Especie,
        ylab = "Especie",
        xlab = "Diametro",
        col = "yellow")

#Seleccionar la especie F mediante subset (subconjunto)
Spf <- subset(conjunto, conjunto$Especie == "F")

#Seleccionar exceptuando F
SpHC <- subset(conjunto, conjunto$Especie != "F")

tapply(conjunto$Altura, conjunto$Especie, mean)

SpHpro <- subset(conjunto, conjunto$Altura >= mean(conjunto$Altura))

SpHpro <- subset(conjunto, conjunto$Altura == mean(conjunto$Altura))

which(conjunto$Altura > 20)
#El dato se encuentra en la fila 18
conjunto[18:20,7]
conjunto[c(18,20), ]
conjunto[,3]




