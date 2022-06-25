setwd("C:/Users/Leonardo Machado/Documents/CURSOS R/Rstudio com GitHub/TIDYVERSE_PR-TICA-DE-DADOS")
getwd()
# Função Filter
library(tidyverse)

starwars
#filtrando colunas
  # O R entende o conectivo 'e' com o uso da ','

starwars %>% 
  filter(species == "Human",gender == "masculine")

# o R entende o conectico 'ou' com o uso do "|"

starwars %>% 
  filter(species == "Human"|gender == "masculine")

# Valores faltantes NA  :" is.na(local)"

starwars %>% 
  filter(is.na(hair_color))

# filtros dentro da mesma coluna usando a expresão " que seja" = %in%

starwars %>% 
  filter(eye_color %in% c("red","black"))

# utilizando a condição inversa ( !)

starwars %>% 
  filter(!eye_color %in% c("red","black"))
