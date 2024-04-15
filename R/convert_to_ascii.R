#' Converts Vector to ASCII
#'
#' @param x A vector of strings
#'
#' @return A vector of strings converted to ASCII encoding.
#' @export
#'
#' @description
#' This is a utility function that converts vectors into ASCII encoding. Please see the example below to see how to apply this function to a data frame. This function's purpose is to ensure that the data frame included in this package is in ASCII encoding, which will make it more accessible across machines and operating systems.
#'
#'
#' @examples
#' convert_to_ascii(c("café", "jalapeño"))
#'
#' test <- data.frame(
#' names = c("café", "jalapeño"),
#' more_names = c("café", "jalapeño"),
#' even_more_names = c("café", "jalapeño")
#' )
#'
#' test_df <- lapply(test, function(x) if(is.character(x)) convert_to_ascii(x) else x)
#' test_df <- as.data.frame(test_df)
#'
convert_to_ascii <- function(x) {
  # Use iconv() to convert to ASCII
  iconv(x, "UTF-8", "ASCII", sub = "")
}
