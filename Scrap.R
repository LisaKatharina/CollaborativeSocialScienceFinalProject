library(rio)
library(XML)
library(RCurl)
library(rvest)

page <- read_html("http://www.tagesschau.de/ausland/justizminister-hassinhalte-101.html")

text <- page %>% 
  html_nodes(".text")

link <- page %>% 
  html_nodes("a")



