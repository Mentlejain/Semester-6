sentence(I,O):- nounphrase(I,R),verbphrase(R,O).
nounphrase(NP,X):- article(NP,R),noun(R,X).
nounphrase(NP,X):- noun(NP,X).
verbphrase(VP,X):- verb(VP,R),nounphrase(R,X).
noun([man|X],X).
noun([dog|X],X).
verb([likes|X],X).
verb([bites|X],X).
article([the|X],X).
article([a|X],X).