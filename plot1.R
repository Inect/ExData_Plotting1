data<- read.table("./data/household_power_consumption.txt", header=TRUE, sep=";", col.names = c("date","time", "global_active_power", "global_reactive_power", "voltage", "global_intensity", "sub_metering_1", "sub_meterin_2","sub_meterin_3"))
data$date <- as.Date(data$date, format = "%d/%m/%Y")
newdata <- data[data$date >= "2007-02-01" & data$date <= "2007-02-02", ]
newdata$global_active_power<-as.numeric(paste(newdata$global_active_power))
hist(newdata$global_active_power, main = "Golbal Active Power", xlab = "Global Active Power (killowats)", col = "red")
