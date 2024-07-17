#Usando for:
for (i in 1:5) { 
  print(i)
}

#Usando While:
i <- 1
while (i <= 5) {
  print(i) 
  i <- i + 1
}

#Usando repeat:
i <- 1 
repeat {
  print(i) 
  i <- i + 1
  if (i > 5) {
    break
  }
}