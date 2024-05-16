#' Parse the output from Minion
#'
#' @param out Output from Minion as a string.
#'
#' @return List of data.frames containing the parsed results.
#' @export
parseMinionOut <- function(out) {

  dplyr::data_frame(out = out) |>
    dplyr::filter(out != "") |>
    dplyr::filter(!grepl("^Sol:", out)) |>
    dplyr::filter(!grepl("^#", out)) -> out_df

  textConnection(out_df$out) |>
    read.dcf() |>
    dplyr::as_data_frame() ->
    DF

  A <- DF |> dplyr::select(-`Problem solvable?`)

  A <- lapply(A, as.numeric)

  B <- DF |> dplyr::select(`Problem solvable?`)
  B <- as.logical(B$`Problem solvable?` == "yes")

  dplyr::bind_cols(A, `Problem solvable?` = B)
}
