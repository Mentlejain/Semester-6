start:-write('Sublist\n'),
write('Enter a list: '),
read(L),
write('Enter a sublist: '),
read(S),
sublist(S,L),
write('The sublist exists in the given list');
write('Sublist does not exist in the given list'),fail.
sublist([],L):-true.
sublist(S,[]):-false.
sublist([H1|T1],[H1|T2]):- sublist(T1,T2).
sublist([H1|T1],[H2|T2]):- sublist([H1|T1],T2).