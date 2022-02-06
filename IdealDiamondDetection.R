#Goal : Determining an Ideal Diamond from a Good Diamond


#Importing the relevant libraries 
library(neuralnet)
library(caret)
library(tidyverse)

#Data Wrangling and Manipulation
?diamonds # To view more information about the data

head(diamonds) # View the dataset
df <- diamonds%>%
  filter(cut %in% c("Ideal","Good"))
head(df)

#df <- sample_n(df, 5000) #remove this when you do it yourself
dim(df) #26457 rows, 10 columns

df$binary <- ifelse(df$cut == 'Ideal',1,0)
head(df)

#We convert it to a factor as this is the classification
#variable(it needs to be a numerical input to our model)
df$binary <- as.factor(df$binary)

#Removing the original "cut" variable
names(df) # "cut" is at [2]
df<-df[, -2] # Removing the "cut" variable

#Data Partition Using Caret Package
#times-> No.of times we want to partition
#p = 0.7 train, 0.3 validation
rows <- createDataPartition(df$binary,p =0.7,
                            list = F,times = 1)
#Converting "tibble" to "dataframe" object for data partitioning to work
df <- data.frame(df)
train<-df[rows,]
head(train)
val <-df[-rows,]
head(val)

#TrainControl and Model Building
#repeatedcv for cross-validation
control <-trainControl(method = "repeatedcv",
                       number = 10,
                       repeats = 10
                       
)
#ranger is equivalent to randomForest
model <- train(binary ~ ., data = train,
               method = "ranger",
               trControl = control)

model # mtry = 11 highest accuracy

#Now, running this on the test set

pred <- predict(model,val)
head(pred)

#Confusion Matrix
confusionMatrix(pred,val$binary)
#Train Accuracy : 98.37
#Validation Accuracy : 98.22




