#Plot Berganda Data Total.Deaths dan Total.Recovered
colors <- c("Total.Deaths" = "blue", "Total.Recovered" = "red")

b <- ggplot(Data_Cases , aes(x=Date)) +
  geom_line(aes(y=Total.Deaths, color = "Total.Deaths")) +
  geom_line(aes(y=Total.Recovered, color = "Total.Recovered")) +
  theme_light() +
  labs(x = "Date",
       y = "Frequency",
       color = "Legend") +
  scale_color_manual(values = colors) 
b