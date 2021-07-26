:- dynamic(stored/1).
memo(Goal) :-
stored(Goal) -> true;
Goal, assertz(stored(Goal)).
start:-write('Fibonacci Series\n'),
write('Enter the term n: '),
read(N),
generate_fib(N,T),
write('\nnth term is: ').
generate_fib(0,0):-!,write('0 ').
generate_fib(1,1):-!,write('1 ').
generate_fib(N,T):-	N1 is N-1,
					N2 is N-2,
				    memo(generate_fib(N2,T1)),
				    memo(generate_fib(N1,T2)),
				    T is T1+T2,
				    write(T),write(' ').