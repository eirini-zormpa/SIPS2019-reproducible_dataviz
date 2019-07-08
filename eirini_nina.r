library(ggplot2)
library(dplyr)


# import dar]ta
full_trains <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-26/full_trains.csv")

# Visualisation 1
full_trains %>%
  filter(!is.na("service")) %>%
  ggplot(aes(x=journey_time_avg, alpha = 0.3)) +
  geom_histogram(binwidth = 25) +
  labs(x= "Jouney time (mins.)", y = "Number of Instances",
       title= "Histogram of Average Journey Time for Trains on the SNCF Network")

# visualisation 2
full <- full_trains %>%
  filter(!is.na("service"))
national <- filter(full, service == "National")
  
ggplot() +
  geom_histogram(full, mapping = aes(x=journey_time_avg, alpha = 0.3), binwidth = 25) +
  geom_histogram(national, mapping = aes(x=journey_time_avg, fill = "red", alpha = 0.5), binwidth = 25) +
  labs(x= "Jouney time (mins.)", y = "Number of Instances",
       title= "Histogram of Average Journey Time for Trains on the SNCF Network",
       subtitle = "National Service trains highlighted in red") +
  guides(fill = FALSE)
