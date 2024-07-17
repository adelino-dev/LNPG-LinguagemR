# 1 - Ativar o pacote compiler:
library(compiler)

# 2. Definir uma função (ex: função para calcular a média):
calcular_media <- function(numeros) {
  total <- sum(numeros)
  media <- total / length(numeros)
  return(media)
}

# 3 - Compilar a função:
calcular_media_compilada <- cmpfun(calcular_media)

# 4 - Usar a função compilada:
numeros <- c(1, 2, 3, 4, 5) 
resultado <- calcular_media_compilada(numeros)
print(resultado) # Deve imprimir 3