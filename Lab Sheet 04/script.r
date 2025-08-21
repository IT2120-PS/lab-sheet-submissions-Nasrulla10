# The file 'Exercise.txt' should be in your R working directory.
# This command reads the data into a data frame named 'branch_data'.
branch_data <- read.table("Exercise.txt", header = TRUE)

# To view the data and make the variables accessible by name:
fix(branch_data)
attach(branch_data)


# This command generates a horizontal boxplot for the 'sales' variable.
# I am mapping 'X1' from the lab sheet to 'sales'.
boxplot(X1, main="Box plot for Sales (Team Attendance)", horizontal=TRUE)




# The summary() function provides the five-number summary plus the mean.
# I am mapping 'X2' to 'advertising'.
summary(X2)

# The IQR() function calculates the Interquartile Range directly.
IQR(X2)



find_outliers <- function(data_vector) {
  # Calculate the first and third quartiles
  q1 <- quantile(data_vector)[2]
  q3 <- quantile(data_vector)[4]

  # Calculate the Interquartile Range (IQR)
  iqr <- q3 - q1

  # Determine the upper and lower bounds for outlier detection
  upper_bound <- q3 + 1.5 * iqr
  lower_bound <- q1 - 1.5 * iqr

  # Print the bounds
  print(paste("Lower Bound =", lower_bound))
  print(paste("Upper Bound =", upper_bound))

  # Find and sort the outliers
  outliers <- sort(data_vector[data_vector < lower_bound | data_vector > upper_bound])

  # Print the outliers
  if (length(outliers) == 0) {
    print("No outliers found.")
  } else {
    print(paste("Outliers:", paste(outliers, collapse = ", ")))
  }
}

# I am mapping 'X3' to 'years'.
find_outliers(X3)
