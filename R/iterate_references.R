#' Iterates the `mark_references` function through EDIT dataframes list
#'
#' @param data Object of class data.frame to which you'll append the new columns.
#' @param dfs A list of EDIT dataframes. This list can be more easily generated using the `create_data_list` function, which will pull all EDIT dataframes from the global environment.
#' @param varnames A character vector of the variable names for your new variables. Note that the `create_data_list` function will automatically generate an object called `included_objects`, which will have the relevant varaible names for each EDIT dataframe.
#'
#' @return A single EDIT dataframe with all the relevant IIA provisions marked as binary variables.
#' @export
#'
#' @examples
#' \dontrun{iia_data <- iterate_references(dfs = data_list, varnames = included_objects)}
iterate_references <- function(data, dfs, varnames) {
  columns <- list()  # Initialize an empty list to store new columns

  for (i in seq_along(dfs)) {
    new_var <- mark_references(data, dfs[[i]], varnames[i])
    columns[[i]] <- new_var[, varnames[i]]  # Add new column to the list
  }

  names(columns) <- varnames  # Assign the variable names to the list of columns

  new_data <- do.call(cbind, columns)  # Convert the list of columns into a data frame

  a <- cbind(data, new_data)  # Combine data frames
  return(a)
}




