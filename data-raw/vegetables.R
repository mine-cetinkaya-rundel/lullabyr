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

# add vegetables starting with I, U, X, V, Z
# ref I, U, Z: https://edis.ifas.ufl.edu/features/fruitvegindex.html
# ref X: http://food.answers.com/Q/Is_a_xerophyte_a_fruit_or_vegetable
# ref V: https://answers.yahoo.com/question/index?qid=20100309004707AALUTZU

vegetables <- c(vegetables, "Ice Plant", "Upland Cress", "Xerophyte",
                "Velvet Bean", "Vidalia Onion", "Zucchini")

# save data --------------------------------------------------------------------
use_data(vegetables)
