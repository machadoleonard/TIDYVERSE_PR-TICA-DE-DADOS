#Função mutate

# Operção na coluna subscrevendo-a

starwars %>% 
  mutate(
    height = height/100
  )

# Operação criando nova coluna devia a alguma condição de outra coluna

starwars %>% 
  mutate(
    peso_90 = ifelse(mass> 90, "obeso",ifelse(mass<=90 & mass>= 50,"padrão", "magro"))
  ) %>% 
  select(name,peso_90, mass)

# caso queira substituir , alterar o nome de NA , no caso na coluna hair_color
starwars

starwars %>% 
  mutate(
    hair_color = ifelse(is.na(hair_color),"desconhecido",hair_color)
    
  )
    
#Parâmetros especiais

#.keep = "used" - colunas utilizadas
#.keep = "unused"- não trabalhadas
#.keep = "none"- somente criadas

starwars %>% 
  mutate(
    hair_color = ifelse(is.na(hair_color),"desconhecido",hair_color), .keep = "used"
    
  )


# . before  e .after - antes ou depois de determinada coluna

starwars %>% 
  mutate(
    peso_90 = ifelse(mass> 90, "obeso",ifelse(mass<=90 & mass>= 50,"padrão", "magro")) , .after = "name")

