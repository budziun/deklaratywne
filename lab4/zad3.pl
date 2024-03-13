p(a,d).
p(X,Y):-q(X,Z),r(Z,Y).
q(a,b).
q(c,a).
r(a,d).
r(b,c).
/* odp
?- trace.
?- p(a,X). => X=d ; X=c.
?- p(X,d). => X=a ; X=c.
*/