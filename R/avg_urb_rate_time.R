library(ggplot2)

only_1900  = select(french_main, id, name, year, totalpop, totalpop1750) %>%
  filter(year == 1900)

View(arrange(only_1900, totalpop))
View(arrange(only_1900, totalpop1750))



urb_rate = select(french_main, id, name, year, urbrate) %>% 
  group_by(year) %>%
  summarise( mean_urb_rate = mean(urbrate, na.rm = TRUE))

ggplot(urb_rate ) + 
  geom_line(aes(year, mean_urb_rate)) +
  xlab("Year") + ylab("Mean Urbanization Rate") + 
  theme_bw()
