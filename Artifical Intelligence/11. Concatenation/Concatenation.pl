start:-write('List Concatenation\n'),
write('Enter a list: '),
read(L1),
write('Enter a list: '),
read(L2),
conc(L1,L2,L3),
write('Result: '),
write(L3).
conc([],L,L).
conc([X|L1],L2,[X|L3]):-conc(L1,L2,L3).