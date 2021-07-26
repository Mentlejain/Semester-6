Palindrome<-function(str)
{
  a <- unlist(strsplit(str,""))
  b <- rev(a)
  if(all(a==b))
    return(TRUE)
  else
    return(FALSE)
}
s=readline("Enter string:")
if(Palindrome(s))
  {print('String is a palindrome')
  }else{
  print('String is not a palindrome')}