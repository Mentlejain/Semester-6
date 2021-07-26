start:-write('Sum of a list\n'),
write('Enter a list: '),
read(L),
sumlist(L,S),
write('Sum of the list is: '),
write(S).
sumlist([],0).
sumlist([H|T],S):-sumlist(T,S1),S is S1+H.