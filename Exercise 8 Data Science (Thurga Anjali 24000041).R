library(dplyr)

students <- read.csv("C:/Users/thurg/Downloads/student_data.csv")

#Show the details of students whose final_exam_mark is greater than 80%.
students[students$final_exam_mark > 80, ]

#Arrange the dataset in ascending order based on course_work_mark.
mydata1 <- students %>%
  arrange(coursework_mark)

View(mydata1)

#Display only the student_name and final_exam_mark attributes.
students[, c("student_name", "final_exam_mark")]

#Specify the number of rows and columns.
nrow(students)
ncol(students)

#Obtain the dataset details.
str(students)
summary(students)
head(students)
tail(students)

#Detect outliers using a boxplot.
Q1 <- quantile(students$final_exam_mark, 0.25)
Q3 <- quantile(students$final_exam_mark, 0.75)

IQR_value <- IQR(students$final_exam_mark)

lower_limit <- Q1 - 1.5 * IQR_value
upper_limit <- Q3 + 1.5 * IQR_value

students[students$final_exam_mark < lower_limit |
           students$final_exam_mark > upper_limit, ]

