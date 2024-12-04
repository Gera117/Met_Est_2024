# Agustin Gerardo Carrera Valladares 
# 1869027
# 20/08/2024

# Problema 1 ----------
# Ingresar en objetos la superficie por especie

Pinus <- 3140
Mezquite <- 1453
Encinos <- 450
Teka <- 1200
Juniperus <- 720

superficie <- c(Pinus, Mezquite, Encinos, Teka, Juniperus)
sup <- c(3140, 1453, 450, 1200, 720)


# Operaciones 
# Transformar ha a m2
m2 <- superficie * 10000
sup = 10000

nombre <- c("Pinus", "Mezquite", "Teka", "Juniperus", "Encino")
sup<- sort(sup, decreasing = T)

barplot(superficie, ylim = c(0,3500),
        col = "red", names.arg = nombre,
        xlab = "Especies",
        ylab = "Superficie (ha)",
        main = "Reportes CONAFOR")

