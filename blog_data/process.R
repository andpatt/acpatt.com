library("jsonlite")
library(tidyverse)
# OK so to start with we needed to strip out the bad observations. 
# Bad observations are because the iperf server died and iperf client wrote thousands of entries of "connection closed" to the file. 

# How to find them?  cat into JQ and it tells you which line it failed on. Open the file and browse to that line. Delete everything after that line.

# NOW we've got the issue that these aren't lists. They're just json objects. So cat to `sed 's/^}$/},/'` to replace all the } at start of line with }, 

# Then you put a open bracket at the start, a close bracket at the end and BAM. It's a valid json array. 

rawData <- jsonlite::fromJSON("/dump/fixed.json")

tibble <- as_tibble(rawData)

unnested <- tibble %>% unnest(cols= c("start", "intervals", "end"), names_repair = "universal") # The data is all nested in json so start unnesting it.


# Strip out all the crap we don't need. We just want the sent and recieved with timestamps
trim <- select(unnested, timestamp, streams...12, sum, streams...14, sum_sent, sum_received)

# This is as far as I got before I got stuck. Or rather, before the width of the data got too gross and I started looking for other options.

-----------------------------------------------------
  
# Tidying with TIDYR: https://cran.r-project.org/web/packages/unnest/vignettes/tidyr.html
  
  
  
library(tidyr)
library(dplyr)
library(repurrrsive)
library(unnest)
options(unnest.return.type = "tibble")

