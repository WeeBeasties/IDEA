## Analysis of IDEA ReST Data

### Overview  

This project explores some ways to analyze IDEA course evaluation data for program assessment. The ReST API interface is used to gather the data using curl `GET` requests. The resulting JSON-formatted information is then transformed into dataframes and then analyzed. 

### Authentication  

Authentication information is included in a file called `OAuthAccessToken.R`. This file contains two lines:  
>access_token <- "##"  
>api_key <- "##"  

The values for these variables (replacing the '##') are determined by the folks at IDEA, and will be provided to you. I have put the `OAuthAccessToken.R` file in the .gitignore list to protect the integrity of my appName and key.

### Data Organization  

In order to access the IDEA data using the ReST API, we must first understand how it structured. This took the most time for me to figure out for myself. 
