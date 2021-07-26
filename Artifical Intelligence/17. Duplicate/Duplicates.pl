start:-write('Removing Duplicates\n'),
write('Enter a list: '),
read(L),
write('List without duplicates: '),
remove_dup(L,R),
write(R).
remove_dup([],[]).
remove_dup([H|T], R):- member(H, T),remove_dup(T, R).
remove_dup([H|T], [H|R]):-remove_dup(T,R).