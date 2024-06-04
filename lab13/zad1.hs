-- [x*x|x<-[1..10],even x] even - parzyste

-- [x*x|x<-[1..10],even x] = [4,16,36,64,100]
-- [2*x|x<-[1..5]] = [2,4,6,8,10]
-- [y 'mod' 3 |y<-[5..10]] = [2,0,1,2,0,1]
-- [a*b | (a,b)<-[(1,2),(2,3),(3,4)]] = [2,6,12]
-- [(x,y)|x<-[1,2],y<-[3,4]] = [(1,3),(1,4),(2,3),(2,4)]
-- [x|x <-[1..12],y<-[1..12],x*y=12] = [1,2,3,4,6,12]
-- [x|x<-[-5,2,3,-2],x>0] = [2,3]

-- generatory zależne
-- [(x,y)|x<-[1..3],y<-[x..3]] = [(1,1),(1,2),(1,3),(2,2),(2,3),(3,3)]
-- [x*y|x<-[1..3],y<-[1..x]] = [1,2,4,3,6,9]
-- [x+y |x<-[5,7..10],y<-[5..x]] = [10,12,13,14,14,15,16,17,18]
-- bo 5,7..10 to liczba co 2 do zakresu 10 czyli == 5,7,9
-- [(x,y)|x<-[1,4..10],y<-[1..x]] = [(1,1),(4,1),(4,2),(4,3),(4,4),(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),(10,1),(10,2)(10,3),(10,4),(10,5),(10,6),(10,7),(10,8),(10,9),(10,10)]

kwadrat_lista xs=[x*x|x<-xs]
-- Main> kwadrat_lista [1,2,3,4]
--[1,4,9,16]

lista_wieksza1::[Int]->[Int]
lista_wieksza1 xs=[x+1|x<-xs] 

lista_razy2::[Int]->[Int]
lista_razy2 xs=[x*2|x<-xs]

-- przy pomocy funkcji map
--map:: (a->b)->[a]->[b]
--map f[]=[]
--map f(x:xs)=(fx):(map f xs)

--bez uzycia listy
razy_dwa x=2*x
razy_dwa_lista[]=[]
razy_dwa_lista(x:xs)=(razy_dwa x):(razy_dwa_lista xs)

--z map uzyciem
razy_dwa2 x=2*x
razy_dwa_lista2 xs=map razy_dwa2 xs

--lista_wiekszao1
wiekszao1 x=x+1
lista_wiekszao1::[Int]->[Int]
lista_wiekszao1 xs=map wiekszao1 xs

kwadrat x=x*x
kwadrat_listy::[Int]->[Int]
kwadrat_listy xs=map kwadrat xs

-- lista mniejsza o 3 
-- rekurencja
mniejszao3 x=x-3
lista_mniejszao3_1::[Int]->[Int]
lista_mniejszao3_1[]=[]
lista_mniejszao3_1(x:xs)=(mniejszao3 x):(lista_mniejszao3_1 xs)
-- jakis blad pewnie w tym x*xs bo nic nie widac na tablicy

-- kwalifikator
lista_mniejszao3_2::[Int]->[Int]
lista_mniejszao3_2 xs[x-3|x<-xs]

-- map
mniejo3_3 x=x-3
lista_mniejszao3_3::[Int]->[Int]
lista_mniejszao3_3 xs=map mniejo3_3 xs
