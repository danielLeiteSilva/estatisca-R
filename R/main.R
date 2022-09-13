install.packages("dplyr")


library(dplyr)


exemplo <- data.frame("nome" = c("Daniel", "Raquel", "Roberta"),
                      "idade" = c(27, 30, 18),
                      "qtd_livros" = c(10, 8, 24),
                      "faculdade" = c("TI", "MKT", "ART"))


engenharia <- exemplo %>%
                filter(faculdade == "TI")

exemplo %>%
  mutate(media_livros = mean(qtd_livros)) %>%
  select(nome, idade, media_livros) %>%

  
exemplo %>%
  group_by(faculdade) %>%
  tally()
