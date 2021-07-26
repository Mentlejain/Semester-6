binary_search<-function(vec,n)
{
  low=1
  high=length(vec)
  while(low<=high)
  {  
    mid=ceiling((low+high)%/%2)
    if (vec[mid] == n) 
    {
      return(mid)
    }
    else if (vec[mid] > n) 
    {
      high=mid-1
    }
    else
    {
      low=mid+1
    }
  }
  return(-1)
}
print("Enter elements of vector")
x=scan()
n=as.integer(readline("Enter element to search : "))
x=sort(x)
print('Sorted array: ');print(x)
i=binary_search(x,n)
if(i==-1)
{
  print("Element not found")
}else
{
  print(paste("Element found at position:",i))
}