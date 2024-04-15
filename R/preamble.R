#' IIAs with Preambles
#'
#' This data set contains information on International Investment Agreements (IIAs) with preambles, including basic identifying details and dates.
#'
#' @format A data frame with 1346 rows and 9 variables.
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
#' @source This data set is sourced from the [EDIT website](https://edit.wti.org/document/investment-treaty/search), where comprehensive IIA data sets can be accessed. To get this specific data set, make sure to select the "preambles" tab, which will provide you with all the IIAs with preambles.
#' @examples
#' data(preamble)
#' head(preamble)
#' @export preamble
preamble <- data.frame(
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
