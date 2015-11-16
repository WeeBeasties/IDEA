###################################################################
#   Install and load the packages needed
###################################################################
packages<-function(x){
	x<-as.character(match.call()[[2]])
	if (!require(x,character.only=TRUE)){
		install.packages(pkgs=x,repos="http://cran.r-project.org")
		require(x,character.only=TRUE)
	}
}
packages(dplyr)    # data management made simple
packages(ggplot2)  # makes very nice stylized plots
packages(xtable)   # makes formatted html tables
packages(httr)     # read data from web URLs
packages(rjson)    # deal with JSON data files


###################################################################
#   Getting data from the IDEA ReST interface
###################################################################

IDEA_JSON <- GET('https://rest.ideasystem.org/IDEA-REST-SERVER/v1/forms', add_headers('X-IDEA-APPNAME' = 'FerrisState', 'X-IDEA-KEY' = 'DVsAXkimDc7N'), verbose())
