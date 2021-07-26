Maximum<-function(l)
{
    m=0
    for (i in l)
        if(i > m)
            m=i
    return(m)
}

n=as.integer(readline("Enter number of terms: "))
x=list()
print("Enter elements of List")
for (i in 1:n)
    x[i]=as.integer(readline())
print(paste("Maximum: ",Maximum(x)))