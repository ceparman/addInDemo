# R Package addinDemo - Bringing the Code to the Data"



## R package to show one method to bring code to your data. 

### Why?

Sometimes for various reason you are required to process data where is resides. This can be because of security concerns or the size of the data.  

This demo show how to use RStudio's Addins feature to run an a Shiny app directly from Github. This method only requires the enduser to do a one time installation of the package.  Once install the user will have access to the latest app.  The app is run locally using the function runGithub from the Shiny package.  

# Details

Two files are required to add the app in GitHub as a Addin.  First a simple function to run the app.  In this case the function installs any need packages before running the app.

```
RunbellcurveDose<- function() {

  #Install any required packages
  
  required.packages <- c("ggplot2", "minpack.lm","dplyr","tidyr","nls2","stringr")
  missing.packages <- required.packages[!(required.packages %in% installed.packages()[,"Package"])]
  if(length(missing.packages)) install.packages(missing.packages)
  
  
# Run the current version from Github
  
 shiny::runGitHub(repo="ceparman/bellcurveDose",launch.browser=TRUE)
  return()
}
```

The second file define the menu item. This file is the /rstudio/addins.dcf. The file looks like this.

```
Name: BellcurveDose
Description: Run Bell Curve Dose Response App
Binding: RunbellcurveDose
Interactive: true

```

Name defined the menu item and the binding links this the RunbellcurveDose function. You can have multiple menu items linked to many different apps.



**Installation:**

Install the demo using the devtools package.

devtools::install_github("ceparman/addinDemo")

**Usage:**

Once the package in installed the new menu item BellcurveDose will appear in the addins menu.  When 
you run the addin the function will install an missing required packages and the run the app in a new browser window.


**For further information**


*ngsAnalytics*

ngsanalytics.com
info@ngsanalytics.com



![ngsAnalytics](https://github.com/ceparman/ngsAnalytics/raw/main/assets/images/logo.png)



