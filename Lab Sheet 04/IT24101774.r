setwd("C:\\Users\\it24101774\\Desktop\\lab4")

branch_data <- read.table("Exercise.txt",header=TRUE,sep = ",")
fix(branch_data)
attach(branch_data)

boxplot(Sales_X1,main="Boxplot for Sales",horizontal=TRUE)


summary(Advertising_X2)
IQR(Advertising_X2)
find_outliers <- function(data_vector) {
  q1 <- quantile(data_vector)[2]
  q3 <- quantile(data_vector)[4]

  iqr <- q3 - q1
  
  upper_bound <- q3 + 1.5 * iqr
  lower_bound <- q1 - 1.5 * iqr
  

  print(paste("Lower Bound =", lower_bound))
  print(paste("Upper Bound =", upper_bound))
  
  outliers <- sort(data_vector[data_vector < lower_bound | data_vector > upper_bound])
  

  if (length(outliers) == 0) {
    print("No outliers found.")
  } else {
    print(paste("Outliers:", paste(outliers, collapse = ", ")))
  }
}


find_outliers(Years_X3)

