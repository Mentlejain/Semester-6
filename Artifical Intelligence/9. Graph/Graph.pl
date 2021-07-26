start:-write('Cyclic Directed Graph\n'),
write('Enter source vertex: '),
read(A),
write('Enter destination vertex: '),
read(B),
route(A,B),write('Route exists');write('Route doesn\'t exist').
edge(p,q).
edge(q,r).
edge(q,s).
edge(s,t).
route(A,B):-edge(A,B).
route(A,B):-edge(A,C),route(C,B).