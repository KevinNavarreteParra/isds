#' Create a list of data objects
#'
#' @param exclude_objects A character vector of objects to exclude from the list. Make sure to always exclude the full data frame into which you'll be appending the new data. You should also exclude the `exclude_objects` vector itself, as well as any other objects that are not the data frames you intend to pull into the list. Default is `c("full_edit_data", "exclude_objects")`.
#'
#' @return A list of data frames that are in the global environment, excluding the objects specified in `exclude_objects`. This function serves as a quick way to pull the data frames without having to manually type out each one. You will also see a new object in your global environment called `included_objects`, which is a character vector of the objects that were included in the list. This is useful later, when you run the `iterated_references` function.
#'
#' @export
#'
#' @examples
#' \dontrun{exclude_objects <- c("full_edit_data", "exclude_objects")}
#' \dontrun{data_list <- create_data_list(exclude_objects)}
create_data_list <- function(exclude_objects) {
  # Get all objects in the global environment
  all_objects <- ls(.GlobalEnv)

  # Filter out the objects you want to exclude
  included_objects <- all_objects[!all_objects %in% exclude_objects]

  # Create a list containing the data objects
  data_list <- lapply(included_objects, function(x) {
    obj <- get(x)
    if (is.data.frame(obj)) {
      return(obj)
    }
  })

  names(data_list) <- included_objects

  # Remove NULL elements from the list
  #data_list <- data_list[!sapply(data_list, is.null)]

  assign("included_objects", included_objects, envir = .GlobalEnv)

  # Return the data_list
  return(data_list)
}
