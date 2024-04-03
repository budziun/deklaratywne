% konkat(L1,L2,L3)
% spełniony, gdy L3 jest połączeniem list L1 i L2
% -----------------------------------------------

% rekurencja ze względu na liste L1:

% warunek kończący rekurencję: połączenie listy
% pustej z listą L daje listę L
	konkat([],L,L).

%rekurencja:
% głowa listy L3 jest głową listy L1
% ogon listy L3 jest połączeniem ogona listy L1
% z listą L2
	konkat([H1|T1],L2,[H1|T3]):-konkat(T1,L2,T3).
/*
Sesja prologowa
?- konkat([1,2],[3,4],[1,2,3,4]).
true.
?- konkat([],[1,2],X).
X = [1, 2].
?- konkat([a],[b,c],X).
X = [a, b, c].
*/
% element(E,L) - spełnoiny, gdy E jest elementem listy L.
% samemu zrobic

% warunek kończący rekurencje:
	element(H1,[H1|T1]).

% rekurencja:
	element(E,[H1|T1]):-element(E,T1).

/* 
element(E,[E|_]):- !.
element(E,[_|T]):-element(E,T).

Sesja prologowa
?- element(2,[1,2,3]).
true ;
false.
?- element(2,[1,5]).
false.
*/
% odwrotna_lista(L1,L2) - spełniony gdy, lista L2 jest odwróceniem listy L1.
% warunek, kończący rekurencję.

odwrotna_lista([],[]).

%rekurencja
	odwrotna_lista([H|T1],L):-odwrotna_lista(T1,T2),konkat(T2,[H],L).

/*
Sesja prolog
?- odwrotna_lista([1,2,3,4],[4,3,2,1]).
true.
?- odwrotna_lista([1,2,3,4],[4,3,2]).
false.
?- odwrotna_lista([1,2,3,4,5],X).
X = [5, 4, 3, 2, 1].
*/
% Predykaty

% dodatni(X)
% spełniony, gdy X jest liczbą dodatnią
	dodatni(X):-X>0.

% lista_dodatnia(L)
% spełniony, gdy wszystkie elementy listy są dodatnie

	lista_dodatnia(L):-maplist(dodatni,L).

/*
Sesja prologowa
?- lista_dodatnia([2,3]).
true.
?- lista_dodatnia([-2,3]).
false.
*/
% wiekszy od (X,Y)
% Spełniony, gdy Y jest wieksze od X

	wiekszy_od(X,Y):-Y>X.
% wiekszy_od_lista(+X,+L).
% spełniony, gdy wszystkie elementy listy L są większe od X

	wiekszy_od_lista(X,L):-maplist(wiekszy_od(X),L).
/*
Sesja prologowa
?- wiekszy_od_lista(2,[3,4,5]).
true.
?- wiekszy_od_lista(4,[3,4,5]).
false.
*/

% kwadrat_lista(L1,L2)- spełniony gdy elementy L2 są kwadratami elementów L1

	kwadrat(X,Y):- Y is X*X.

%spełniony warunek
	kwadrat_lista(L1,L2):-maplist(kwadrat,L1,L2).

/*
Sesja prologowa
?- kwadrat_lista([2,4],[4,16]).
true.
?- kwadrat_lista([3,5],L).
L = [9, 25].
*/

% lista_razy2(L1,L2) - spełniony gdy elementy listy L2 są elementami L1 pomnożonymi przez 2

	razy2(X,Y):- Y is X*2.
% warunek
	lista_razy2(L1,L2):-maplist(razy2,L1,L2).

/*
Sesja prologowa
?- lista_razy2([1,2,3],[2,4,6]).
true.
?- lista_razy2([5,10,20],X).
X = [10, 20, 40].
*/