start:-write('Multiplication of two numbers\n'),
write('Enter a number: '),
read(N1),
write('Enter a number: '),
read(N2),
multi(N1,N2,R),
write('Product: '),
write(R).
multi(X,0,0).
multi(X,Y,Z):-Y>0,Y1 is Y-1,multi(X,Y1,Z1),Z is X+Z1.
multi(X,Y,Z):-Y<0,Y1 is Y+1,multi(X,Y1,Z1),Z is Z1-X.