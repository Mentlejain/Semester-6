start:-write('Nth Element\n'),
write('Enter a list: '),
read(L),
length(L,T),
not_empty(T)->
write('Enter position: '),
read(N),
(check(N,T)->
nth_element(N,L,X),
write('Element: '),
write(X);
write('Invalid Position'),fail);
write('List is empty').
nth_element(1,[H|T],H).
nth_element(N,[H|T],X):-N1 is N-1,nth_element(N1,T,X).
check(N,T):-N>=1,N =< T.
not_empty(T):-T > 0.