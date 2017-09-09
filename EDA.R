# Facebook data from Buffer
#
# Date: Date of Post
# Post: Content of Post
# Likes: # of likes (or total reactions)
# Comments: # of comments (including SR comments)
# Clicks: # of clicks
# Shares: # of shares
# Potential: # of people reached (people who have seen the post in their timelines)
# 

library(readr)
fb <- read_csv("~/Documents/CASR-buffer/buffer_90_days_export.csv", 
                    col_types = cols(X8 = col_skip()), skip = 1)
fb <- fb %>% 
  mutate(Date=as.POSIXct(Date, format="%m/%d/%Y %I:%M %p")) %>% 
  separate(Date,c("Date", "Time"), sep = " ", remove = TRUE, extra= "merge")


