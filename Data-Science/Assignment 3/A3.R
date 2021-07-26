n = readline(prompt = "Enter a number: ")
n=as.integer(n)
print(paste("Printing table of",n),quote = FALSE)
for (i in 1:12) 
{
    print(paste(n,"*",i,"=",n*i),quote=FALSE)
}