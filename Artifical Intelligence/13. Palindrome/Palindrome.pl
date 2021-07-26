start:-write('Checking Palindrome list\n'),
write('Enter a list: '),
read(L),
palindrome(L),
write('List is a Palindrome');
write('List is not a Palindrome'),fail.
equal([],[]):-true.
equal([H1|_],[H2|_]):-false.
equal([H1|T1],[H1|T2]):-equal(T1,T2).
palindrome(L):-reverse(L,R),equal(L,R).