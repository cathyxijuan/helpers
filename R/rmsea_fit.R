
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
