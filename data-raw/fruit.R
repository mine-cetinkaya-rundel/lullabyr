# load packages ----------------------------------------------------------------
library(tidyverse)
library(rvest)
library(usethis)

# scrape data ------------------------------------------------------------------
fruits_page <- read_html("https://simple.wikipedia.org/wiki/List_of_fruits")

fruits <- fruits_page %>%
  html_nodes(".column-width a") %>%
  html_text()

# add fruits starting with V

fruits <- c(fruits, "Vanilla Bean", "Victoria plum")

# save data --------------------------------------------------------------------
use_data(fruits)
