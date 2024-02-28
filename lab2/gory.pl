% program góry
%dane
%lubi(X,Y) - X lubi Y
%bratniadusza(X,Y) - X jest bratnia dusza Y.
lubi(jan,tatry).
lubi(jan,beskidy).
lubi(jerzy,beskidy).
lubi(jerzy,bieszczady).
lubi(adam,sudety).
lubi(justyna,bieszczady).
bratniadusza(X,Y):-lubi(X,G),lubi(Y,G),X\==Y.
/* odp takie zadanie bedzie na kolos
A)
a) 7 klauzul
b) 6 faktow, 1 reguła
c) 
d) 2 definicje relacji

B)
1)lubi(jan,sudety). -> false
2)lubi(jan,Y). -> Y = tatry ; Y = beskidy.
3)lubi(X,bieszczady). -> X = jerzy; X = justyna.
4)bratniadusza(jan,_). -> true
5)bratniadusza(justyna,Y). -> jerzy
6)bratniadusza(X,Y). -> X=jan Y=jerzy ; X=jerzy Y=justyna.
*/