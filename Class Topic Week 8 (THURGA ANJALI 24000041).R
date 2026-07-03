#wee k8
#upload data
student_data<- read.csv("C:/Users/thurg/Downloads/student_data.csv")
View(Student_fail)

#student fail
Student_fail<- Student_fail<- student_data[student_data$final_exam_mark< 40,]

mydata1<- student_data %>% filter(final_exam_mark < 40) %>% arrange(desc(final_exam_mark))
View(mydata1)

mydata2<- student_data %>% filter(final_exam_mark< 40) %>% arrange(final_exam_mark)
View(mydata2)

#select function
mydata2 <- student_data%>% select(student_id,coursework_mark, final_exam_mark)
View(mydata2)

#glimpse
glimpse(student_data)

#mutate
mydata4 = student_data%>% mutate(Total_Mark=(coursework_mark + final_exam_mark/200*100))
View(mydata4)

#glimpse
glimpse(mydata4)

#descriptive statistics-------------------------------------------------------------
data(iris)
head(iris)
tail(iris)
head(iris,10)
tail(iris,10)
str(iris)
View(iris)

min(iris$Sepal.Length) 
max(iris$Sepal.Length)
range(iris$Sepal.Length)
sd(iris$Sepal.Length) 
var(iris$Sepal.Length)
summary(iris)

#quantile
A<-c(170.2, 181.5, 188.9, 163.9, 166.4, 163.7, 160.4, 175.8, 181.5)
quantile(A)
sort(A)
IQR(A)
quantile(A,0.25)
quantile(A,0.75)

#counting column and row
nrow(iris)
ncol(iris)

hist(iris$Sepal.Length,
     main = "Histogram of Sepal Length",
     xlab = "Sepal Length (cm)",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")

data<-c(30,24,26,28,29,28,27,26,32,34,13,15,14,31,29,28,24,25,30,34,35,27,30,34,44,48)
boxplot(data, main = "Boxplot")

first_q<-quantile(data,0.25) #this is 26
third_q<-quantile(data,0.75) #this is 31.75
iqr<-IQR(data,0.5)
lower_extreme<-first_q - 1.5 * iqr
ue<-third_q + 1.5 * iqr 

data_new<-data
data_new <- data_new[!data_new<le]
data_new <- data_new[!data_new>ue]
data_new

data_new <- data
avg <- round(mean(data_new)) #for the purpose of example we round up value
data_new[data_new<le] <- avg
data_new[data_new>ue] <- avg
data_new

data_new <- data
data_new[data_new<le] <- le
data_new[data_new>ue] <- ue
data_new
