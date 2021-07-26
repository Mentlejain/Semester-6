n = readline(prompt = "Enter a number: ")
n=as.integer(n)
res=0
for (i in 0:n) 
{
    res=res+i
}
print(paste("Sum = ",res),quote=FALSE)