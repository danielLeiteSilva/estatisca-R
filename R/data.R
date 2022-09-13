install.packages("car")


library(car)
library(dplyr)


attach(mtcars)


carros <- mtcars

plot(carros$wt, carros$mpg, main = "Gráfico de Dispersao",
     xlab = "Peso do carro", ylab = "Milhas por galão", pch = 19)


abline(lm(carros$mpg - carros$wt), col = "red")
