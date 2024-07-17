# Carregar o pacote parallel
library(parallel)

# Função que realiza uma tarefa pesada
tarefa_pesada <- function(x) {
  Sys.sleep(1)  # Simulando uma tarefa que leva tempo
  mean(x)
}

# Dados de exemplo
dados <- replicate(100, rnorm(1e6), simplify = FALSE)

# Usando mclapply para executar em paralelo (para Linux e MacOS)
resultados <- mclapply(dados, tarefa_pesada, mc.cores = 4) #Usando 4 núcleos

#Mostrar resultados
resultados