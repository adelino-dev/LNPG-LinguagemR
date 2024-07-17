# Variável global
a <- 5

minha_funcao <- function() {
  # Variável local
  b <- 10
  print(a)  # Acessa a variável global
}

print(b)  # Erro: b não é acessível fora da função