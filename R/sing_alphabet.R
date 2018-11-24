#' Sing the alphabet song
#'
#' Create the alphabet song by randomly sampling words with the appropriate
#' initials from the wordbag provided.
#'
#' @param wordbag A character vector of words to sample from.
#' @importFrom dplyr mutate
#' @importFrom dplyr arrange
#' @importFrom dplyr group_by
#' @importFrom dplyr slice
#' @importFrom dplyr select
#'
#' @export
#' @examples
#'
#' sing_alphabet(fruits)
#' sing_alphabet(animals)
#' sing_alphabet(vegetables)
#' sing_alphabet(countries)
#'
sing_alphabet <- function(wordbag){

  if(missing(wordbag)){
    stop("Please provide a wordbag.")
  }

  if(length(wordbag) == 0){
    stop("Please provide a wordbag with at least one word.")
  }

  words_df <- data.frame(
    word = wordbag
  )

  selected_words_df <- words_df %>%
    mutate(initial = toupper(str_sub(word, 1, 1))) %>%
    mutate(rando = runif(n())) %>%
    arrange(initial, rando) %>%
    group_by(initial) %>%
    slice(1) %>%
    select(-rando)

  if(nrow(selected_words_df) < 26){
    warning("Your wordbag does not contain at least one word for each letter in the English alphabet, some letters will be skipped.")
  }

  cat(
    paste0(
      selected_words_df$initial, " is for ", selected_words_df$word, ", ",
      selected_words_df$initial, " - ", selected_words_df$initial, " - ",
      selected_words_df$word, ".\n"
    )
  )

}
