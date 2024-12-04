#Importar datos de GitHub

madera<-read.csv("https://raw.githubusercontent.com/mgtagle/Met_Est_2024/main/Datos_Madera_MET.csv", header = T)
View(madera)

boxplot(madera$Peso_g ~ madera$Especie)

shapiro.test(madera$Peso_g) 

bartlett.test(madera$Peso_g ~ madera$Especie)

madera$peso_t <- log(madera$Peso_g)

boxplot(madera$peso_t ~ madera$Especie)

t.test(madera$Peso_g ~ madera$Especie, var.equal =T)

#Prueba 2

boxplot(madera$Lado_C ~ madera$Especie)

which(madera$Lado_C > 20.5)
madera[c(23,30),]

shapiro.test(madera$Lado_C)
bartlett.test(madera$Lado_C ~ madera$Especie)
madera$Lado_t <- log(madera$Lado_C)