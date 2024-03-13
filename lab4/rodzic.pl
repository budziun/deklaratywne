%rodzic
rodzic(ewa,ania).
rodzic(piotr,ewa).
przodek(X,Y):-rodzic(X,Y).
przodek(X,Y):-rodzic(X,Z),przodek(Z,Y).
/* odp
?-przodek(ewa,Y) => Y=ania
?-przodek(piotr,Y) => Y=ewa; Y=ania
?-przodek(ania,Y) => false.
*/