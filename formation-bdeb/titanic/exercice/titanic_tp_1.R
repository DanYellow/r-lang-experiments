setwd("~/projects/r-lang/formation-bdeb/titanic/exercice")

if (!require(dplyr)) {
  install.packages("dplyr")
  require(dplyr)
}

if (!require(ggplot2)) {
  install.packages("ggplot2")
  require(ggplot2)
}

train <- read.csv("train.csv",  header=TRUE)
test <- read.csv("test.csv",  header=TRUE)

train$Survived<-factor(train$Survived)

# mutate function adds a new column to my dataset
test <- mutate(test, Survived="none")
test<-mutate(test, dataset="testset")
train<-mutate(train, dataset="trainset")

titanic.combined<-rbind(test, train)

str(titanic.combined)

data<-tbl_df(titanic.combined)

data$Pclass<-factor(data$Pclass)
data$dataset<-factor(data$dataset)
data$Survived<-factor(data$Survived)

IDdups<-distinct(data, PassengerId)
dim(IDdups)

Namedups<-distinct(data, Name)
dim(Namedups)

filter(data, duplicated(Name))
filter(data, grepl('Kelly|Connolly', Name, Age))

head(data)
# 
# # summary(tbl_df(data))
# 
trainset<-data%>%arrange(dataset)%>%slice(419:1309)
# 
hist_Age<-ggplot(trainset, aes(x=Age, fill=Survived))
hist_Age+geom_bar()
hist_Age + stat_bin(binwidth=2.35)
# 
hist_Age+geom_bar(position="fill")
hist_Age + stat_bin(binwidth=5.35)
# 
# hist_Sex<-ggplot(trainset, aes(x=Sex, fill=Survived))
# hist_Sex+geom_bar(position="fill")
