
#' Title
#'
#' @param x cfi value
#'
#' @return a string describing the cfi value
#' @export
#'
#' @examples
#' cfi_fit(0.91)
#' cfi_fit(0.96)
#' cfi_fit(0.88)
cfi_fit <- function(x){
  if (x > 0.90){
    if (x > 0.95){
      print("very good fit")
    } else {
      print("reasonable fit")
    }
  } else {
    print("bad fit")
  }
}


