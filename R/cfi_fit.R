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
