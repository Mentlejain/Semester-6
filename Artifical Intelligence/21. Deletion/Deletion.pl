start:-write('Deletion from list\n'),
write('Enter a list: '),
read(L),
write('Enter position: '),
read(N),
length(L,T),
check(N,T)->
delete_nth(N,L,R),
write('List after deletion: '),
write(R);
write('Invalid Position'),fail.
delete_nth(N,[],R).
delete_nth(1,[H|T],T).
delete_nth(N,[H|T],[H|R]):-N1 is N-1,delete_nth(N1,T,R).
check(N,T):-N>=1,N=<T.