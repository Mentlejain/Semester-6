start:-write('Sum of two numbers\n'),
write('Enter a number: '),
read(N1),
write('Enter a number: '),
read(N2),
sum(N1,N2,S),
write('Sum: '),
write(S).
sum(A,B,C):-C is A+B.