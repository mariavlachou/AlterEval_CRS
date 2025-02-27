d_to_oddsratio <- function(d, log = FALSE, ...) {
  log_OR <- d * pi / sqrt(3)
  
  if (log) {
    log_OR
  } else {
    exp(log_OR)
  }
}

##convert Cohen's d of original study to OR
d_to_oddsratio(1.13, log = FALSE) # 7.764742 
#convert odds to probability
7.764742/(1+7.764742) # 0.8859065

##convert Cohen's d of replication study Klein et al. to OR
d_to_oddsratio(0.62, log = FALSE) # 3.078848 
#convert odds to probability
3.078848/(1+3.078848) # 0.7548327
