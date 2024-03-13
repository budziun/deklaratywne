%klocki 2
na(d,c).
na(c,a).
na(c,b).
na(a,e).
na(b,g).
nad(X,Y):-na(X,Y).
nad(X,Y):-na(X,Z),nad(Z,Y).
/* odp
1.?- nad(d,a). => true a innej odpowiedzi nie znaleziono - false
2.?- nad(b,c). => false
3.?- nad(X,b). => X=c;X=d
4.?- nad(d,X). => X=c;X=a;X=b;X=e;X=g
5.?- nad(c,_). => true (4 razy)
*/