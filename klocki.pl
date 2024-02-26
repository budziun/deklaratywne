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
na(c,a). zwaraca true
na(d,a). zwraca false
na(X,c). wyzanczanie X=d
na(c,X). X=a na jakim klocku lezy bezposrednio klocek c 
jak kursor miga to istnieje jeszce inna odpowiedz wtedy ";" srednik klikamy
na(_,c). zwraca true, czy na zmiennej c lezy jakis klocek
na(a,_). false, czy na zmiennej a lezy jakis klocek

*/
