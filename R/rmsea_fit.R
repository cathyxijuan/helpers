#' RMSEA FIT
#' This function allows you to check the model fit through RMSEA.
#' This function allows you to express your love of cats.
#' @param x a numeric value indicating the RMSEA value
#' @keywords rmsea
#' @export
#' @examples
#' rmsea_fit(0.04)
rmsea_fit <- function(x){
  if (x < 0.08){
    if (x < 0.05){
      print("very good fit")
    } else {
      print("reasonable fit")
    }
  } else {
    print("bad fit")
  }
}
