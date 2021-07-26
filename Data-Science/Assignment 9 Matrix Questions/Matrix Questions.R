#Assignment 9
#Matrix Questions

# 1. Create a matrix with proper row and column names, of size 2X3.
M=matrix(1:6,nrow=2,ncol=3,dimnames=list(c('R1','R2'),c('C1','C2','C3')))
print(M,quote = FALSE)

# 2. Use dimnames() on this matrix.
n=dimnames(M)
print(paste('Row names: ',n[1],' Column names: ',n[2]),quote = FALSE)

# 3. Display number of columns and number of rows.
print(paste('Number of columns: ',ncol(M)),quote = FALSE)
print(paste('Number of rows: ',nrow(M)),quote = FALSE)

# 4. Print a particular element.
print(paste('Print element at [Row 1,Column 2]',M[1,2]),quote = FALSE)

# 5. Print full matrix
print('Printing Matrix: ',quote = FALSE)
print(M)

# 6. Print a particular row
print('Printing Row 1: ',quote = FALSE)
print(M[1,],quote = FALSE)

# 7. Print a particular column
print('Printing Column 2: ',quote = FALSE)
print(M[,2],quote = FALSE)

# 8. Assign new value to an element
M[2,2]=7
print(paste('Assigned new element at [Row 2,Column 2]: ',M[2,2]),quote = FALSE)

# 9. Add new column
print('New Column: ',quote = FALSE)
M=cbind(M,C4=c(3,8))
print(M,quote = FALSE)

# 10. Add new row
print('New Row: ',quote = FALSE)
M=rbind(M,R3=c(2,5,6,7))
print(M,quote = FALSE)

# 11. Display the result of various mathematical operations on 2 matrices, another matrix should be created in row major form.
A=matrix(1:12,nrow=3,ncol=4,byrow=TRUE,dimnames=list(c('R1','R2','R3'),c('C1','C2','C3','C4')))
print('Matrix A:',quote = FALSE)
print(A,quote = FALSE)

print('M+A=',quote = FALSE)
N1=M+A
print(N1)
print('M-A=',quote = FALSE)
N2=M-A
print(N2)
print('M*A=',quote = FALSE)
N3=M*A
print(N3)
print('M/A=',quote = FALSE)
N4=M/A
print(N4)

B=matrix(1:16,nrow=4,ncol=4,byrow=TRUE,dimnames=list(c('R1','R2','R3','R4'),c('C1','C2','C3','C4')))
print('Matrix B:',quote = FALSE)
print(B,quote = FALSE)
print('M %*% B =',quote = FALSE)
N5=M%*%B
print(N5)

# 12. Check whether an object is matrix or not.
print(paste('Checking if A is matrix:',is.matrix(A)),quote = FALSE)

# 13. Display the sum of rows.
print('Sum of Rows of M: ')
print(rowSums(M),quote=FALSE)

# 14. Display the mean of a particular column.
print(paste('Mean of M[column 3]: ',mean(M[,3])),quote = FALSE)