start:-write('Member of a list\n'),
write('Enter a list: '),
read(L),
write('Enter an element: '),
read(X),
write('Result: '),
write(X),
memb(X,L),
write(' is a member of list');
write(' is not a member of list').
memb(X,[H|T]):-memb(X,T).
memb(X,[X|T]).