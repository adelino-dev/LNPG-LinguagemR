# Carregar o pacote parallel
library(parallel)

# Função que realiza uma tarefa pesada
tarefa_pesada <- function(x) {
  Sys.sleep(1)  # Simulando uma tarefa que leva tempo
  mean(x)
}

# Dados de exemplo
dados <- replicate(100, rnorm(1e6), simplify = FALSE)

# Criar um cluster de 4 núcleos
cl <- makeCluster(4)

# Exportar a função e os dados para os trabalhadores do cluster
clusterExport(cl, varlist = c("tarefa_pesada"))

# Usar parLapply para executar em paralelo
resultados <- parLapply(cl, dados, tarefa_pesada)

# Parar o cluster após a execução
stopCluster(cl)

# Mostrar resultados
resultados
