#' Sing the alphabet song
#'
#' Create the alphabet song by randomly sampling words with the appropriate
#' initials from the wordbag provided.
#'
#' @param wordbag A character vector of words to sample from.
#' @importFrom dplyr mutate
#' @importFrom dplyr group_by
#' @importFrom dplyr slice
#' @importFrom stringr str_sub
#' @importFrom stats runif
#' @importFrom magrittr "%>%"
#' @importFrom rlang .data
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

  words_df_n <- nrow(words_df)

  selected_words_df <- words_df %>%
    dplyr::mutate(initial = stringr::str_sub(.data$word, 1, 1) %>% toupper()) %>%
    dplyr::mutate(rando = stats::runif(words_df_n)) %>%
    dplyr::arrange(.data$initial, .data$rando) %>%
    dplyr::group_by(.data$initial) %>%
    dplyr::slice(1)

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
