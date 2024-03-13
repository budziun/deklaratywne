ojciec(karol,jan).
ojciec(karol,adam).

dziecko(tomasz,jan).
dziecko(piotr,adam).
dziadek(karol,marek).

dziadek(X,Y):-ojciec(X,Z),dziecko(Y,Z).
/* odp
?- trace. => true czyli jest drzewo i otwiera ten trace
dostajemy pozniej calle -> kontnuj enter wciskajac

?- dziadek(X,piotr).
X = karol.

*/