#' Full EDIT Data Set
#'
#' This data set contains information on International Investment Agreements (IIAs), including basic identifying details and key dates.
#'
#' @format A data frame with 3951 rows and 9 variables.
#' \describe{
#'  \item{Name}{Name of the IIA document (character)}
#'  \item{Type}{Type of IIA document (factor)}
#'  \item{Date.of.signature}{Date when the IIA was signed (Date)}
#'  \item{Date.of.entry.in.force}{Date when the IIA entered into force (Date)}
#'  \item{Date.of.termination}{Date when the IIA was terminated (Date)}
#'  \item{Date.of.publication}{Date when the IIA was published (Date)}
#'  \item{Origin.language}{Languages of the IIA document (character)}
#'  \item{Party.ISO.codes}{Aggregated ISO codes of the parties involved (character)}
#'  \item{Doc.Reference}{Document identifier (character)}
#' }
#' @source This data set is sourced from the [EDIT website](https://edit.wti.org/document/investment-treaty/search), where comprehensive IIA data sets can be accessed.
#' @examples
#' data(full_edit_data)
#' head(full_edit_data)
#' @export full_edit_data
full_edit_data <- data.frame(
  Name = character(),
  Type = factor(),
  Date.of.signature = as.Date(character()),
  Date.of.entry.in.force = as.Date(character()),
  Date.of.termination = as.Date(character()),
  Date.of.publication = as.Date(character()),
  Origin.language = character(),
  Party.ISO.codes = character(),
  Doc.Reference = character()
)
