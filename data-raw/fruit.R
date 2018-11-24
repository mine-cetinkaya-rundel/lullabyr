# load packages ----------------------------------------------------------------
library(tidyverse)
library(rvest)
library(usethis)

# scrape data ------------------------------------------------------------------
fruits_page <- read_html("https://simple.wikipedia.org/wiki/List_of_fruits")

fruits <- fruits_page %>%
  html_nodes(".column-width a") %>%
  html_text()

# add fruits starting with I, V, X ---------------------------------------------
# ref: https://www.wcrf-uk.org/uk/recipes/alphabet-of-fruit#v
# ref: https://en.wikibooks.org/wiki/Wikijunior:Fruit_Alphabet

fruits <- c(fruits, "Victoria plum", "Indian Plum", "Xigua")

# save data --------------------------------------------------------------------
use_data(fruits)
