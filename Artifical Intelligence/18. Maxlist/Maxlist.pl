start:-write('Maximum of a list\n'),
write('Enter a list: '),
read(L),
maxlist(L,M),
write('Maximum of the list is: '),
write(M).
maxlist([],'NA (Empty list)'):-!.
maxlist([X],X):-!.
maxlist([H|T],M):-maxlist(T,M1),(H>M1->M is H;M is M1).