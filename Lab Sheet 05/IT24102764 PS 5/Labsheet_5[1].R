setwd("C:\\Users\\User\Desktop\\IT24102764 PS 5")
getwd

# 1. Import the dataset into R and store it in a data frame called "Delivery Times"
Delivery_Time <- read.table("Exercise - Lab 05.txt", header=TRUE, sep=",")
# Display the data frame
print(Delivery_Time)

# 2. Draw a histogram for delivery times using nine class intervals
# Define breaks for the histogram

hist(Delivery_Time$Delivery_Time, 
     main = "Histogram of Delivery Times", 
     breaks = seq(20, 70, length.out = 10),  # 10 breakpoints for 9 intervals
     right = TRUE,
     xlab = "Delivery Time", 
     ylab = "Frequency")

# 4. Draw a cumulative frequency polygon (ogive) for the data in a separate plot
cum_freq <- cumsum(histogram$counts)  # Calculate cumulative frequency
mids <- histogram$mids  # Midpoints of the intervals

# Plot the cumulative frequency polygon
plot(mids, cum_freq, type='o', main="Cumulative Frequency Polygon for Delivery Times",
     xlab="Delivery Time (minutes)", ylab="Cumulative Frequency", ylim=c(0, max(cum_freq)),
     pch=19, col="blue")

# Optionally, you can add a grid for better visualization
grid()

