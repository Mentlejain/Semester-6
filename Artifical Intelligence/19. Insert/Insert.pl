start:-write('Insertion at N\n'),
write('Enter a list: '),
read(L),
write('Insert element: '),
read(I),
write('Insert position: '),
read(N),
insert_nth(I, N, L, R),
write('List after insertion: '),
write(R).
insert_nth(I,N,[],[I]).
insert_nth(I, 1, L, [I|L]).
insert_nth(I, N, [H|T], [H|R]):- N1 is N-1,insert_nth(I, N1, T, R).
insert_nth(I, N, [], [I|R]).