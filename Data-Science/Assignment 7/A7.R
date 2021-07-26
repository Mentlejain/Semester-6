linear_search<-function(v,n)
{
  flag=FALSE
  j=1
  for (i in v)
  {
    
    if(i==n)
    {
      flag=TRUE
      print(paste("Element found at position",j))
    }
    j=j+1
  }
  if(flag==FALSE)
  {  
    print("Element not found")
  } 
}
print("Enter elements of vector:")
v=scan()
n=readline("Enter element to search : ")
linear_search(v,n)
