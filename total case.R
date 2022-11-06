#Plot Data Total Cases di Provisi Sulawesi Selatan
Data_Cases <- subset (Indonesia_covid, Location =="Sulawesi Selatan")
Data_Cases$Date <- strptime(as.character(Data_Cases$Date), "%m/%d/%Y")
format(Data_Cases$Date, "%Y-%m-%d")
Data_Cases$Date <- as.Date(Data_Cases$Date)
view(Data_Cases)

a <- ggplot(Data_Cases, aes(x=Date, y=Total.Cases)) +
  geom_line() + 
  xlab("")
a