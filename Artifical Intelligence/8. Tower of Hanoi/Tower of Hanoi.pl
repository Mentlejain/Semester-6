start:-write('Tower of Hanoi\n'),
write('Towers:3\n'),
write('Source,Auxiliary,Target\n'),
write('Enter number of disks: '),
read(N),
towerofhanoi(N).
towerofhanoi(N):-move(N,'Source','Target','Auxiliary').
move(1,X,Y,_):-write('Move top disk from '),write(X),write(' to '),write(Y),nl.
move(N,X,Y,Z):-	N>1,M is N-1,move(M,X,Z,Y),move(1,X,Y,_),move(M,Z,Y,X).