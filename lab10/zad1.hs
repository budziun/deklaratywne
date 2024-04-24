abs::Float->Float
abs x=if x<0 then (-x) else x

abs2 x 
 |x<0 =(-x)
 |otherwise =x

minimum::Float->Float->Float
minimum a b=if a<b then a else b

minimum2 a b 
 |a<b = a
 |otherwise = b

sgn::Float->Float
sgn x=if x>0 then 1
 	else if x<0 then (-1)
	else 0 


sgn2 x 
 |x>0 = 1
 |x<0 = (-1)
 |otherwise = 0

--funkcja albo_albo (dopasowanie do wzorca)
albo_albo1::(Bool,Bool)->Bool
albo_albo1 (p,q)=case (p,q) of (True,True)->False
			       (True,False)->True
			       (False,True)->True
			       (False,False)->False

albo_albo::Bool->Bool->Bool
albo_albo p q = if p==q then False
		else True

albo_albo3 p q
 |p==q = False
 |otherwise = True

-- albo_albo4 - and,or,not
albo_albo4::Bool->Bool->Bool
albo_albo4 p q = not p && q || p && not q

--implikacja logiczna jakas
--raczej do zrobienia
--implikacja::Bool->Bool->Bool
--implikacja p q = 
--		 if p==False then True
--		 else if q=True then True
--		 else False



