--f(x)=2*x
razy_dwa :: Num a => a -> a
razy_dwa x = 2*x

--g(x)=x*x
--kwadrat :: Num a => a -> a --Haskell
--kwadrat :: Integer -> Integer --mój typ
kwadrat x = x*x

--h(x,y)=x^2+y^2
--sum_kw :: Num a => a -> a -> --Haskell
sum_kw x y = kwadrat x + kwadrat y

--k(x,y)=x>y
pierwszy_wk :: Ord a => a -> a -> Bool
pierwszy_wk x y = x>y

--pierwszy sposob bez definicji lokalnych
ob_kuli r = 4/3 * pi * r * r * r

--drugi sposob z klauzula where
ob_kuli2 r = a * pi * sz
	     where a = 4/3
		   sz = r * r * r

--trzeci sposob z wyrazeniem let

ob_kuli3 r = let a = 4/3
		 sz = r * r * r
	     in a * pi * sz

-- pole kuli P = pi * r^2

pole_kuli r = pi * r * r

pole_kuli2 r = pi * rkw
	       where rkw= r*r

pole_kuli3 r = let a= r*r
	       in pi * a

pole_prostopad a b h = 2 * a * b + 2 * a * h + 2 * b * h

pole_prostopad2 a b h = pp + pb
			where pp= 2 * a * b
			      pb = 2 * a * h + 2 * b * h

pole_prostopad3 a b h = let pp = 2 * a * b
			    pb1 = 2 * a * h
			    pb2 = 2 * b * h
			in pp + pb1 + pb2

