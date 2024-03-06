%lab03
%unifikacja termów T1 i T2
/*
T1: fun(a,X,f(Y))
T2: fun(V,h(Y,V),f(g(V)))

V=a
fun(a,X,f(Y))
fun(a,h(Y,a),f(g(a)))

X=h(Y,a)
fun(a,h(Y,a),f(Y))
fun(a,h(Y,a),f(g(a)))

Y=g(a)
fun(a,h(g(a)),f(g(a)))
fun(a,h(g(a)),f(g(a)))

*/
/* zawsze sprawdzamy czy jest ta sama nazwa funkcji i tyle samo argumentow
w programie w1=w2. (przyklad fun(a,X,f(Y))=fun(V,h(Y,V),f(g(V))).)
1.
f(X,a(b,c))
f(Z,a(Z,c))

X=Z 
f(Z,a(b,c))
f(Z,a(Z,c))

Z=b
f(b,a(b,c))
f(b,a(b,c))
2.
fu(a,X,f(g(Y)))
fu(V,h(Z,V),f(V))

V=a
fu(a,X,f(g(Y)))
fu(a,h(Z,a),f(a))

X=h(Z,a)
fu(a,h(Z,a),f(g(Y))
fu(a,h(Z,a),f(a))

g(Y)=/= a
nie da sie uzgodnic 

3.
fu(a,X,f(g(Y)))
fu(Y,f(Z),f(Z))

Y=a
fu(a,X,f(g(a)))
fu(a,f(z),f(Z)))

X=f(z)
fu(a,f(z),f(g(a)))
fu(a,f(z),f(z))

Z=g(a)
fu(a,f(g(a)),f(g(a)))
fu(a,f(g(a)),f(g(a)))

4.
fu(f(X),Y,a)
fu(f(g(Y)),c,Z)

Y=c
fu(f(X),c,a)
fu(f(g(c)),c,Z)

X=g(c)
fu(f(g(c)),c,a)
fu(f(g(c)),c,Z)

Z=a
fu(f(g(c)),c,a)
fu(f(g(c)),c,a)
*/
/*Dziadek*/
/*1*/ojciec(karol,jan).
/*2*/ojciec(karol,adam).

/*3*/dziecko(tomasz,jan).
/*4*/dziecko(tomasz,adam).

/*5*/dziadek(karol,marek).
/*6*/dziadek(X,Y):-ojciec(X,Z),dziecko(Y,Z).

%odp: ojciec(karol,Z1),dziecko(X,Z1).
% z1 = jan x=tomasz ; z1=adam x=tomasz

