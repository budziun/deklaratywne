% Program klocki_1
% Baza wiedzy o układzie klocków
% Definiowane predykaty:
%       na/2 
%===============================

% na (X,Y)
% opis: spełniony,gdy klocek X leży bezpośrednio na klocku Y
% ----------------------------------------na/2
	na(c,a).
	na(c,b).
	na(d,c).
	pod(X,Y):-na(Y,X).
	miedzy(X,Y,Z):-na(X,Y),pod(X,Z).
	miedzy(X,Y,Z):-na(X,Z),pod(X,Y).
	miedzy(X,Y,Z):-na(X,Y),pod(Z,X).
	miedzy(X,Y,Z):-na(X,Z),pod(Y,X).
%-----------------------------------------na/2
/*
Informacje o budowie programu:
Program składa się z 3 klazul.
Program zawiera 1 definicje relacji.
Jest to relacja na/2.
Definicja relacji na/2 składa się z 3
klauzul, które są faktami.
*/
% input, debug, info...
/*
lab01
na(c,a). zwaraca true
na(d,a). zwraca false
na(X,c). wyzanczanie X=d
na(c,X). X=a na jakim klocku lezy bezposrednio klocek c
jak kursor miga to istnieje jeszce inna odpowiedz wtedy ";" srednik klikamy
na(_,c). zwraca true, czy na zmiennej c lezy jakis klocek
na(a,_). false, czy na zmiennej a lezy jakis klocek
na(X,a),na(X,b). X=c zwraca klocek na ktorym lezy bezposrednio na a i b

lab02
pod(X,Y):-na(Y,X).
pod(c,d). true
pod(a,d). false
pod(X,d). X=c
pod(X,c). X=a i X=b
pod(c,X). X=d
pod(_,d). true
pod(_,a). false

miedzy(X,Y,Z) -> klocek X lezy miedzy klockami X i Z
miedzy(c,a,d). true
miedzy(X,b,d). x=c


*/
	
