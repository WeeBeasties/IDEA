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
packages(RCurl)    # read data from URLs
packages(rjson)    # deal with JSON data files


###################################################################
#   Loading up external values and functions
###################################################################
source("OAuthAccessToken.R")       # access token and api key
source("getDataframeFromJSON.R")   # function to get data into a dataframe


###################################################################
#   Getting data from the IDEA ReST interface
###################################################################
IDEA_JSON = getURL(url = paste("https://rest.ideasystem.org/IDEA-REST-SERVER/v1/
			       responses/:surveyID
			       ?access_token=", access_token,
			       "&api_key=", api_key, sep=""))

IDEA.dataframe <- getDataframeFromJSON(IDEA_JSON)

