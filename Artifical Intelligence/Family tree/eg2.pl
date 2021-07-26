female(pam).
female(liz).
female(ann).
female(pat).

male(tom).
male(bob).
male(jim).

parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

offspring(X,Y):-parent(Y,X).
mother(X,Y):-parent(X,Y),female(X).
grandparent(X,Y):-parent(Z,Y),parent(X,Z).
grandchild(X,Y):-grandparent(Y,X).
different(X,Y):-X\=Y.
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),different(X,Y).
predecessor(X,Y):-parent(X,Y).
predecessor(X,Y):-parent(Z,Y),predecessor(X,Z).