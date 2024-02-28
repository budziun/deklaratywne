% lab02
% grupa ludzi 
/* do zdefiniowania 5 relacji
lubi(X,Y) - X lubi Y
jarosz(X) - jest jaroszem
niepalacy(X) - X nie pali papierosów
czyta(X) - X czyta ksiazki
sport(X) - uprawia sport+

?-lubi(X,Y),lubi(Y,X).
?-lubi(X,Y),lubi(Y,X),X\==Y.

odp
1.
2.
3.
4.
5.
6.

*/
jarosz(ola).
jarosz(ewa).
jarosz(jan).
jarosz(pawel).
niepalacy(ola).
niepalacy(ewa).
niepalacy(jan).
czyta(ola).
czyta(iza).
czyta(piotr).
sport(ola).
sport(jan).
sport(pawel).
sport(piotr).

lubi(ola,X):-jarosz(X),sport(X).
lubi(ewa,X):-jarosz(X),niepalacy(X).
lubi(iza,X):-czyta(X).
lubi(iza,X):-niepalacy(X),sport(X).
lubi(jan,X):-sport(X).
lubi(piotr,X):-sport(X),jarosz(X).
lubi(piotr,X):-czyta(X).
lubi(pawel,X):-jarosz(X),sport(X),czyta(X).