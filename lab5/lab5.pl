%lab 05
%maximum X1 i X2
/*
działania
/+ dzielenie
++ dodawanie
-+ odejmowanie 
*+ mnozenie 
//+ 
**+ potega 2
mod+ modulo
^+ poteaga 2
*/
%rozpoznawanie wielomianow jednej zmiennej
% o współczynnikach liczbowych
/*
Definicja: rekurencja strukturalna

1) x jest wielomianem zmiennej x
c - liczba jest wielomianem dowolnej zmiennej
2) Jeżeli W,W1,W2 są wielomianami zm. x, to 
-W,W1+W2, W1-W2, W1*W2, W^N (N-liczba natrualna)
to są wielomianami zmiennej x
*/

% wielomian(W,X)
% spełniony, gdy W jest wielomianem zmiennej X
% o współczynnikach liczbowych
% definicja rekurencyjna

% warunki zakończenia rekurencji
	wielomian(X,X).
	wielomian(C,_):-number(C).

%rekurencja
	wielomian(-W,X):-wielomian(W,X).
		wielomian(W1+W2,X):-wielomian(W1,X), wielomian(W2,X).
		wielomian(W1-W2,X):-wielomian(W1,X), wielomian(W2,X).
		wielomian(W1*W2,X):-wielomian(W1,X), wielomian(W2,X).
		wielomian(W^N,X):-integer(N), N>1, wielomian(W,X).
/*
Sesja prologowa

1 ?- wielomian(y,y).
true.
2 ?- wielomian(5,x).
true.
3 ?- wielomian(5,y).
true.
4 ?-wielomian(2*x,x).
true.
5 ?- wielomian(3*x+1,x).
true.
6 ?- wielomian(x^2,x).
true.
7 ?- wielomian(x^(-2),x).
false.
8 ?- wielomian(3*x^2+x+1,x).
true;
9 ?- 
*/
%%%
/*
Definicja: rekurencja strukturalna

1) st(x)=1
   st(c)=0, gdzie c - liczba
2) Stopnie wielomianow złożonych określamy następująco:
   st(-W)=st(W),st(W1+W2)=st(W1-W2)=max(st(W1),st(W2)),
st(W1*W2)=st(W1)+st(W2),st(W^N)=st(W)*N (N-liczba naturalna, N>1)
*/

% st_wielomian(W,X,N)
% spełniony, gdy N jest stopniem wielomianu W
% zmiennej X o współczynnikach liczbowych

%warunki zakonczenia rekurencji 
	st_wielomian(X,X,1).
	st_wielomian(c,_,0):-number(c).
%rekurencja
	st_wielomian(-W,X,N):-st_wielomian(W,X,N).
		st_wielomian(W1*W2,X,N):-st_wielomaian(W1,X,N1),st_wielomian(W2,X,N2),N is N1+N2.
		st_wielomian(W1+W2,X,N):-st_wielomian(W1,X,N1),st_wielomian(W2,X,N2),N is max(N1,N2).
		st_wielomian(W1-W2,X,N):-st_wielomian(W1,X,N1),st_wielomian(W2,X,N2),N is max(N1,N2).
		st_wielomian(W^A,X,N):-integer(A),A>1,st_wielomian(W,X,N1),N is N1*A.

/*
sesja prolog:
1 ?- st_wielomian(y,y,1).
true.
2 ?-st_wielomian(x,x,N).
N=1.
3 ?-st_wielomian(x^2,x,N).
N=2.
4 ?-st_wielomian(3*x*x,x,N).
N=2.
5 ?-st_wielomian(5*x^2+x+1,x,N).
N=2.
cos nie dziala z mnozeniem xppp
6 ?-st_wielomian(x^5+2x+1,x,N).
N=5.
*/