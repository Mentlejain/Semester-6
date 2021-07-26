start:-write('GCD of two numbers\n'),
write('Enter a number: '),
read(X),
write('Enter a number: '),
read(Y),
gcd(X,Y,D),
write('GCD: '),
write(D).
gcd(X,X,X). gcd(X,0,X). gcd(0,X,X).
gcd(X,Y,D):-X > Y,K is X-Y,gcd(K,Y,D).
gcd(X,Y,D):-X < Y,K is Y-X,gcd(X,K,D).