library(ggplot2)
library(dplyr)


# import dar]ta
full_trains <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-26/full_trains.csv")

# Visualisation 1
full_trains %>%
  ggplot(aes(x=journey_time_avg, alpha = 0.3)) +
  geom_histogram(binwidth = 25) +
  labs(x= "Jouney time (mins.)", y = "Number of Instances",
       title= "Histogram of Average Journey Time for Trains on the SNCF Network")
