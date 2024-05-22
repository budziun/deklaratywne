--kwadrat lista

kwadrat x=x*x
kwadrat_lista::[Int]->[Int]
kwadrat_lista []=[]
kwadrat_lista (x:xs)=(kwadrat x):(kwadrat_lista xs)

--lista wieksza o 2
wieksze2 x=x+2
lista2::[Int]->[Int]
lista2 []=[]
lista2 (x:xs)=(wieksze2 x):(lista2 xs)

--lista razy 5
razy5 x=x*5
lista5::[Int]->[Int]
lista5 []=[]
lista5 (x:xs)=(razy5 x):(lista5 xs)

--iloczyn listy
iloczyn_listy::[Int]->Int
iloczyn_listy [x]=x
iloczyn_listy (x:xs)=x*iloczyn_listy xs

-- .. to specyfikacja zasiegu listy [10,8..0]
-- fun
fun []=5
fun(x:y)=x - fun y
-- a) okresl typ funkcji
-- b) jaki bedzie wynik aplikacji fun do listy [10,7..2]
-- a) fun::[Int]->Int
-- b) [10,7,4]
-- c) fun[10,7,4]=10-fun[7,4]= 10-(7-fun[4])=10-(7-(4-fun[]))=10-(7-(4-5))=2

--ostatni - wylicza ostatni element listy

ostatni::[Int]->Int
ostatni xs=head(reverse(xs))
ostatni xs=(reverse xs)!!0

--usuwa ostatni - usuwa ostatni element listy i zwraca ja
-- tylko funkcje wbudowane

usun_ostatni::[Int]->[Int]
usun_ostatni xs=reverse(tail(reverse(xs)))

--konkatenacja 
polacz_listy::[Int]->[Int]->[Int]
polacz_listy []ys=ys
polacz_listy (x:xs)ys=x:(polacz_listy xs ys)

--zadanie co bedzie na KOLOKWIUM aaaaaaaaaaa
fun2 []=0
fun2(x:xs)=3*x-fun xs

--fun[5,9..15]
--fun[5,9,13]=3*5 -fun[9,13]=15-(3*9 -fun[13])=15-(27-3*13-0)=15-(27-39)=15+12=27
