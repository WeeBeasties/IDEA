## Analysis of IDEA ReST Data

### Overview  

This project explores some ways to analyze IDEA course evaluation data for program assessment. The ReST API interface is used to gather the data using curl `GET` requests. The resulting JSON-formatted information is then transformed into dataframes and then analyzed. I will add more thoughts later.

### Authentication  

Authentication information is included in a file called `OAuthAccessToken.R`. This file contains two lines:  
