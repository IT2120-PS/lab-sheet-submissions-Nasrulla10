setwd("C:\\Users\\it24101774\\Desktop\\IT24101774")

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")

histogram <- hist(Delivery_Times$Delivery_Time_.minutes., main = "Histogram for Delivery Times", 
                  breaks = seq(20, 70, length = 10), right = TRUE)

mids <- histogram$mids
cum.freq <- cumsum(histogram$counts)
new <- c(0, cum.freq[-length(cum.freq)])

plot(mids, new, type = 'l', main = "Cumulative Frequency Polygon for Delivery Times", 
     xlab = "Delivery Times", ylab = "Cumulative Frequency", 
     ylim = c(0, max(cum.freq)))

cbind(Upper = histogram$breaks, CumFreq = new)

