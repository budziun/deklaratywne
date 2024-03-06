% lab03 
% mieszkancy
/*
mieszka(X,Y) - X mieszka na ulicy Y
sasiad(X,Y) - X jest sasidaem Y
*/
mieszka(ola,dworcowa).
mieszka(piotr,dworcowa).
mieszka(karol,dworcowa).
mieszka(ania,ogrodowa).
mieszka(pawel,ogrodowa).
mieszka(kamil,irysowa).
mieszka(gosia,irysowa).
mieszka(marcin,Y):-mieszka(ola,Y).

sasiad(X,Y):-mieszka(X,U),mieszka(Y,U),X\==Y.
/* odp
1.mieszka(X,dworcowa). => ola, piotr,karol, marcin;
2.sasiad(ola,Y). => piotr,karol,marcin;
3.sasiad(marcin,_). => true
4.sasiad(karol,Y),sasiad(pawel,Y). => false 
*/
