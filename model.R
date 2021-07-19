all_m <- list(w_all = 1, w_some = 0, w_no = 0)
some_m <- list(w_all = 1, w_some = 1, w_no = 0)
no_m <- list(w_all = 0, w_some = 0, w_no = 1)
notall_m <- list(w_all = 0, w_some = 1, w_no = 1)


P <- function(p_0, world, n){
  if (world == 'w_all'){
    return (p_0 ** n)
  }
  else if (world == 'w_no'){
    return ((1 - p_0)**n)
  }
  else
    return (1 - (p_0 ** n + (1 - p_0)**n))
}

P(0.3, 'w_some', 3)
