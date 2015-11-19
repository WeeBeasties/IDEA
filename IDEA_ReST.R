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

source("OAuthAccessToken.R")

###################################################################
#   Getting data from the IDEA ReST interface
###################################################################

IDEA_JSON <- GET('https://rest.ideasystem.org/IDEA-REST-SERVER/v1/surveys', max=100, add_headers('X-IDEA-APPNAME' = access_token, 'X-IDEA-KEY' = api_key), verbose())
mySurveys <-  fromJSON(rawToChar(IDEA_JSON$content))

courses <- list()
for(i in 1:100){
	courses <- append(courses,mySurveys$data[[i]]$course$number)
}

for(i in 1:100){
	mySurveys$data[[i]]$rater_form$id
}
