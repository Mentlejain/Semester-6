Maximum<-function(li)
{
  m=0
  for (i in li)
    if(i > m)
      m=i
  print(m)
} 

n=as.integer(readline("Enter number of terms:"))
x=list()
print("Enter elements of List")
for (i in 1:n)
  x[i]=as.integer(readline(paste("Enter element",i,": ")))
Maximum(x)
