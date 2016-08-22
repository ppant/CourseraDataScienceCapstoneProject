# This a collection of small R programs for practice which I will use in Capstone project 
## Author: Pradeep K. Pant, ppant@cpan.org
## Date: 22/08/2016

## Load CRAN modules 
library(downloader)
library(plyr);
library(dplyr)
library(knitr)
library(readr)
## Stpe 1: Download the dataset and unzip folder
## Check if directory already exists?
if(!file.exists("./projectData")){
  dir.create("./projectData")
}
Url <- "https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip"
## Check if zip has already been downloaded in projectData directory?
if(!file.exists("./projectData/Coursera-SwiftKey.zip")){
  download.file(Url,destfile="./projectData/Coursera-SwiftKey.zip",mode = "wb")
}
## Check if zip has already been unzipped?
if(!file.exists("./projectData/final")){
  unzip(zipfile="./projectData/Coursera-SwiftKey.zip",exdir="./projectData")
}

# Once the dataset is downloaded start reading it as this a huge dataset so we'll read line by line only the amount of data needed