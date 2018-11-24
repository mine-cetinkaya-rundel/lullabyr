# load packages ----------------------------------------------------------------
library(tidyverse)
library(rvest)
library(usethis)

# scrape data ------------------------------------------------------------------
countries_page <- read_html("https://www.britannica.com/topic/list-of-countries-1993160")

countries <- countries_page %>%
  html_nodes(".with-dots .md-crosslink") %>%
  html_text()

# save data --------------------------------------------------------------------
use_data(countries)
