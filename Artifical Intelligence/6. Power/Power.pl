start:-write('Power of a number\n'),
write('Enter a number: '),
read(NUM),
write('Enter power: '),
read(POW),
power(NUM,POW,ANS),
write('Result: '),
write(ANS).
power(X,0,1).
power(X,1,X).
power(X,Y,Z):-Y>1,Y1 is Y-1,power(X,Y1,Z1),Z is X*Z1.