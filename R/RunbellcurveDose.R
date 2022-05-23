#'RunFlowApp as a Rstudio addin
#'
#'\code{RunbellcurveDose} run Run-Imaging-App as a Rstudio addin
#'
#'@export

RunbellcurveDose<- function() {

  #Install any required packages
  
  required.packages <- c("ggplot2", "minpack.lm","dplyr","tidyr","nls2","stringr")
  missing.packages <- required.packages[!(required.packages %in% installed.packages()[,"Package"])]
  if(length(missing.packages)) install.packages(missing.packages)
  
  
# Run the current version from Github
  
 shiny::runGitHub(repo="ceparman/bellcurveDose",launch.browser=TRUE)
  return()
}


