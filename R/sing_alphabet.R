# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

sing_alphabet <- function(wordbag, fix){

  if(missing(wordbag)){
    stop("Please provide a wordbag.")
  }

  if(!missing(fix)){
    fixed_words <- tibble(
      word = fix,
      initial = tolower(str_sub(fix, 1, 1))
    )
  } else{
    fixed_words <- tibble(
      fix = character(),
      initial = character()
    )
  }

  selected_words_wo_fixed <- wordbag %>%
    mutate(initial = str_sub(word, 1, 1)) %>%
    filter(!(initial %in% fixed_words$initial)) %>%
    mutate(rando = runif(n())) %>%
    arrange(initial, rando) %>%
    group_by(initial) %>%
    slice(1) %>%
    select(-rando)

  selected_words <- full_join(selected_words_wo_fixed, fixed_words) %>%
    arrange(initial) %>%
    mutate(upper_initial = toupper(initial)) %>%
    arrange(initial)

  cat(
    paste0(
      selected_words$upper_initial, " is for ", selected_words$word, ", ",
      selected_words$upper_initial, " - ", selected_words$initial, " - ",
      selected_words$word, ".\n"
    )
  )

}
