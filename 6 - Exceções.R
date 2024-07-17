# Função para somar dois números
somar <- function(a, b) {
  resultado <- try(a + b)
  if (inherits(resultado, "try-error")) {
    return("Erro: entrada não-numérica.")
  } else {
    return(resultado)
  }
}
somar(2, 4) # Saída esperada: 6
somar(1, "a") # Saída esperada: "Erro: entrada não-numérica."