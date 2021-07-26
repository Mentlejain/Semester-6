start:-write('Fibonacci Series\n'),
write('Enter the term n: '),
read(N),
generate_fib(N,T),
write('\nnth term is: '),
write(T).
generate_fib(0,0).
generate_fib(1,0).
generate_fib(2,1).
generate_fib(N,T):-N > 2,N1 is (N-1),N2 is (N-2),generate_fib(N1,T1),generate_fib(N2,T2),T is T1+T2.