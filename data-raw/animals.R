# load packages ----------------------------------------------------------------
library(tidyverse)
library(rvest)
library(usethis)

# scrape data ------------------------------------------------------------------
animals_page <- read_html("https://a-z-animals.com/animals/")

animals <- animals_page %>%
  html_nodes(".letter b") %>%
  html_text()

# save data --------------------------------------------------------------------
use_data(animals)
