#Task 1
apple<-c(Mon=1, Tue=3, Wed=5, Thur=7, Fri=9)
banana<-c(Mon=2, Tue=4, Wed=6, Thur=8, Fri=10)
orange<-c(Mon=3, Tue=6, Wed=9, Thur=12, Fri=15)

allfruits<-c(apple, banana, orange)
allfruits
plot(allfruits, type = "o", col = "yellow", pch =16)

#Task 2

Name<-c("John", "Mark", "Grace", "Happy", "Ayo")
Age<-c("30", "25", "27", "45", "36")
Role<-c("Teacher", "Cleaner", "Chef", "Supervisor", "Secretary")
Lengthofservice<-c("6 months", "3 years", "1 year", "8 years", "5years")

df<-data.frame(Name, Age, Role, Lengthofservice)
df



#Task 5
rm(name)
rm(age)
rm(username, userage)

username<-readline("Input your name:")
userage<-readline("Input your age:")
print(paste("My name is", username, "and I am", userage ,"years old."))



#Task 4
max.score <- c(60, 64, 72, 75, 42)
barplot(max.score)
#adding parameters
barplot(max.score, 
        main = "Maximum Scores of Students in Mathematics", 
        xlab = "Percentage",
        ylab = "Names of Students",
        names.arg = c("Ronan", "Leslie", "Betty", "Sola", "Titi"),
        col = "green",
        horiz = TRUE)



#Task 6
print(seq(20,50))
print(mean(20:50))
print(sum(20:50))


#Task 7
v = sample(-50:50, 10, replace=TRUE)
print("content of the vector:")
print("10 random integer values between -50 and +50:")
print(v)


#Optional Challenge
#Task 1
Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i-2] + Fibonacci[i-1]
print("First 10 Fibonacci numbers:")
print(Fibonacci)


#Task 2
for (n in 1:100) {
  if (n %% 3 == 0 & n %% 5 == 0) {print("FizzBuzz")}
  else if (n %% 3 == 0) {print("Fizz")}
  else if (n %% 5 == 0) {print("Buzz")}
  else print(n)
}
