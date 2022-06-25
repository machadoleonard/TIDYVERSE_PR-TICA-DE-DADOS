# Tidyverse

# Select

library(tidyverse)

data("starwars")
?starwars

starwars %>% 
  select(name)


starwars %>% 
  select(name,mass)

starwars %>% 
  select(name : skin_color)
starwars %>% 
  select(-name)
starwars %>% 
  select(starts_with("s"))
starwars %>% 
  select(-films ,    -vehicles ,- starships)
starwars %>% 
  select(ends_with("color"))
starwars %>% 
  select(contains("color"))
getwd()
