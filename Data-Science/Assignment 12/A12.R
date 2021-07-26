#Obtain probability distribution of x, where x is number of spots showing when a six-sided symmetric die is rolled. Simulate random samples of sizes, 40, 70 and 100 respectively and verify frequency interpretation of probability

sample1 = sample(c(1:6),size=40,replace=TRUE)
plot(sample1,col=sample1)
barplot(table(sample1),col=c('red','green','blue','gray','black',7),xlab='Values of dice',ylab='Frequency of Values')
print("Probability distribution:")
print(table(sample1)/40)

sample2 = sample(c(1:6),size=70,replace=TRUE)
plot(sample2,col=sample2)
barplot(table(sample2),col=c('red','green','blue','gray','black',7),xlab='Values of dice',ylab='Frequency of Values')
print("Probability distribution:")
print(table(sample2)/70)

sample3 = sample(c(1:6),size=100,replace=TRUE)
plot(sample3,col=sample3)
barplot(table(sample3),col=c('red','green','blue','gray','black',7),xlab='Values of dice',ylab='Frequency of Values')
print("Probability distribution:")
print(table(sample3)/100)