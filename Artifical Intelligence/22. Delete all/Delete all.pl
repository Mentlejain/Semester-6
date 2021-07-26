start:-write('Deletion from list\n'),
write('Enter a list: '),
read(L),
write('Enter element: '),
read(N),
delete_all(X,L,R),
write('List after deletion: '),
write(R).
delete_all(_,[],[]).
delete_all(X,[X|T],R):-delete_all(X,T,R).
delete_all(X,[H|T],[H|R]):-delete_all(X,T,R).