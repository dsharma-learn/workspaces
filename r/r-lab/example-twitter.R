# install.packages('twitteR')
REPO_CRAN <- 'http://cran.rstudio.com/'

load_library <- function(packageName, repo) {
    
    x <- packageName
    y <- repo
    print( paste("PackageName", packageName))
    if (!require(packageName)) {
      #install.packages(packageName, repos=repo) 
      #library(packageName)
    }
}


load_library ('twitteR', REPO_CRAN)
library('twitteR')

# https://apps.twitter.com --> Get a appKey created
# App name    : DSTestApp2014
# API Key     : dLSfswTeJ1zqfTi7uypzV2dzH
# API Secret  : L3itUEdwK9PU7SYUBenNFC14O7KTMgVz7Ha4FcDGVG1yUra3qG


consumer_key <- 'dLSfswTeJ1zqfTi7uypzV2dzH'
consumer_secret <- 'L3itUEdwK9PU7SYUBenNFC14O7KTMgVz7Ha4FcDGVG1yUra3qG'
access_token <- '6708032-6yxXxyB50UZwJcfJVYfpI9GMO9YdJtXiOw5DL3tGgZ'
access_secret <- 'nvJtnoBDXLnjAnuUKH0nubpalsOMOch3eN5pqD4MBOZrB'

options(httr_oauth_cache=T)

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)


