start:-write('Length of a list\n'),
write('Enter a list: '),
read(L),
(oddlength(L);
evenlength(L)).
oddlength(L):-length(L,N),N1 is mod(N,2),
(N1=:=0 -> write('The list not odd in length\n'),fail;
write('The list is Odd in length\n')).
evenlength(L):-length(L,N),N1 is mod(N,2),
(N1=:=0 -> write('The list even in length\n');
write('The list is not even in length\n')),fail.