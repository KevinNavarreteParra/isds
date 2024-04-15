#' Generates Binaries for EDIT Provisions
#'
#' @param data object of class data frame that will house all of the final binary variables indicating types of clauses in IIAs.
#' @param ref_data object of class data frame from which to pull the reference values. This object should be the given .csv file pulled from the EDIT database with information relating to certain provisions in IIAs.
#' @param column_name Name of the column you'd like to create.
#'
#' @return This function returns a data frame with a new column that contains binary values indicating whether the reference is present in the reference data. If the reference is present, the value will be 1; if not, the value will be 0. Please note that this is a utility function and is not intended to be run on its own. It is meant to be used within the `iterated_references` function.
#' @export
#'
#' @examples
#' \dontrun{data <- mark_references(data, ref_data, "Doc.Reference")}
#'
mark_references <- function(data, ref_data, column_name) {

  data[[column_name]] <- ifelse(data$Doc.Reference %in% ref_data$Doc.Reference, 1, 0)

  return(data)
}
