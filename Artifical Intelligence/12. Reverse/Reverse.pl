start:-write('Reversing a list\n'),
write('Enter a list: '),
read(L1),
write('Reversed list: '),
reverse(L1,L2),
write(L2).
reverse([],[]).
reverse([H|T],L2):-rev(T,LL),append(LL,[H],L2).