#Reading Dataset

data<-read.csv("http://bit.ly/w-data")
data

#Assinging each column to seperate vector
hour<-data$Hours
score<-data$Scores

#Modeling data
model<-lm(score~hour)
model

#Plotting the model
plot(hour,score,main="HOURS VS SCORES",
     ylab = "Scores",
     xlab="Hours",
     col="blue",
     pch=20,
     col.main="red",
     col.lab="darkorange3",
     col.axis="green")

abline(model,col="red")

#comparing actual & predicted score

actual=score
hour=data.frame(hour)

predicted<-predict(model,hour)
predicted

#Predicted score if student studies for 9.25 hrs/day

test<-data.frame(hour=9.25)
predict(model,test)

