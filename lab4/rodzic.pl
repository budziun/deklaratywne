%rodzic
rodzic(ewa,ania).
rodzic(piotr,ewa).
przodek(X,Y):-rodzic(X,Y).
przodek(X,Y):-rodzic(X,Z),przodek(Z,Y).
/* odp
?-przodek(piotr,ania). => true
?-przodek(ania,ewa). => false
?-przodek(X,ania). => X=ewa;X=piotr
?-przodek(piotr,Y). => Y=ewa; Y=ania
?-przodek(ewa,_). => true
?-przodek(ania,_). => false
*/