%%%%% listy lab06
% lista pusta []
% np. [1,2,3,4]
% np. [[1],[2]]
/*
H - glowa listy
T - ogon listy
dla pierwszej listy
H = 1
T = 2,3,4
glowa listy to pierwszy element listy
dla drugiej listy
H=2
T=[]
(H,T) - predykat prolog
(5,[])

UZGADNIANIE LIST

[H|T] [1,2]
H=1 , T=2

[1,2] [X1,X2|T]
X1=1 , X2=2 , T[]
[X1,X2|T] [[a,b]]
Nie da się uzgodnic, bo druga lista ma tylko jeden element

[f(X),a,g(Y)] [Y,Z,g(Z)]
Y=f(x) , Z=a , a =/= f(x) nie da się uzgodnic 

[X,g(b),Z] [f(Z),g(X),a]
X=f(a) , Y=b , Z=a

[[1],[2]] [H|T]
H=[1] T=[[2]]

[X1,X2|T] [[a,b],[c]]
X1=[a,b] , X2=[c] , T=[]

[[a,b]] [H|T]
H=[a,b] T=[]

[g(X),h(Z),b] [Z,h(Y),Y]
Z=g(x) Y=g(x) g(x) i b nie da sie uzgodnic

[a,Y,f(X)] [X,g(Z),f(Z)]
X=a, Y=g(a), Z=a

*/
%programy dla list
% kwadrat_listy(+L1,?L2)
% spełniony, gdy elementy listy L2 są kwadratami
% elementów listy L1; lista L1 jest listą liczbową
% ograniczenia: L1 i L2 są listami liczbowymi.
%--------------------------------------------------

% warunek kończący rekurencję: kwadrat listy pustej
% jest listą pustą.

kwadrat_listy([],[]).

%rekurencja:

kwadrat_listy([H1|T1],[H2|T2]):-H2 is H1*H1,kwadrat_listy(T1,T2).

%sesja prologowa
/*
?- kwadrat_listy([2,4],[4,16]).
true.
?- kwadrat_listy([2,5],[4,10]).
false.
?- kwadrat_listy([2,5],X).
X = [4, 25].
*/
% Drugi program 
% podowjenie(+L1,?L2).
% spełniony, gdy elementy listy L2 są podwojonymi
% elementami listy L1, np. L1=[a,b], L2=[a,a,b,b]
%-------------------------------------------------

% warunek kończący rekurencję: podwojenie listy pustej
% jest listą pustą.

podwojenie([],[]).

%rekurencja:

podwojenie([H1|T1],[H1,H1|T2]):-podwojenie(T1,T2).

%sesja prologowa
/*
?- podwojenie([a,b],[a,a,b,b]).
true.
?- podwojenie([1,2],[1,2,2]).
false.
?- podwojenie([1,2],X).
X = [1, 1, 2, 2].
*/
% trzeci program samemu
% lista_mniejsza_o2(L1,L2) - spełniony gdy elementy L2 są odpowiednimi elementami 
% L1 pomniejszonymi o 2
% L1,L2 - listy liczbowe
% [4,2] [2,0]

lista_mniejsza_o2([],[]).

%rekurencja:

lista_mniejsza_o2([H1|T1],[H2|T2]):-H2 is H1-2,lista_mniejsza_o2(T1,T2).

%sesja prologowa
/*
?- lista_mniejsza_o2([4,2],[2,0]).
true.
?- lista_mniejsza_o2([5,4],[3,3]).
false.
?- lista_mniejsza_o2([5,4],X).
X = [3, 2].

*/
% kolejny program samodzielny
% lista_razy5(L1,L2) - spelniony gdy elementy listy L2 są odpowiednimi elementami L1
% pomnozonymi razy 5
% [2,2] [10,10]

lista_razy5([],[]).

%rekurencja:

lista_razy5([H1|T1],[H2|T2]):-H2 is H1*5,lista_razy5(T1,T2).

%sesja prologowa:
/*
?- lista_razy5([2,2],[10,10]).
true
?- lista_razy5([1,2],[5,10]).
true.
?- lista_razy5([5,5],[10,10]).
false.
?- lista_razy5([5,5],X).
X = [25, 25].
*/
%kolejny program
% liczba_elem(L,N) - spełniony gdy N jest liczbą elementów listy L.
%[1,2,3] N=3

liczba_elem([],0).

%rekurencja:

liczba_elem([H|T],N):-liczba_elem(T,M),N is M+1.

%sesja prologowa
/*
?- liczba_elem([1,2,3],3).
true.
?- liczba_elem([1,2,3],4).
false.
?- liczba_elem([1,2,3,4,5],X).
X = 5.
*/