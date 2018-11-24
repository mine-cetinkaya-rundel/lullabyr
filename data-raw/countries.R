# load packages ----------------------------------------------------------------
library(tidyverse)
library(rvest)
library(usethis)

# scrape data ------------------------------------------------------------------
countries_page <- read_html("https://simple.wikipedia.org/wiki/List_of_countries")

countries <- countries_page %>%
  html_nodes(".b a") %>%
  html_text()

# save data --------------------------------------------------------------------
use_data(countries)
