# load packages ----------------------------------------------------------------
library(tidyverse)
library(rvest)
library(usethis)
library(tools)

# scrape data ------------------------------------------------------------------
vegetables_page <- read_html("https://simple.wikipedia.org/wiki/List_of_vegetables")

vegetables <- vegetables_page %>%
  html_nodes("p+ ul li > a:nth-child(1)") %>%
  html_text() %>%
  toTitleCase()

# save data --------------------------------------------------------------------
use_data(vegetables)
