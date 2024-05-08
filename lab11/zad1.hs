row_log:: Bool->Bool->Bool
row_log p q = if p==q then True
	      else False

first::(a,b,c)->a
first(x,_,_)=x
second::(a,b,c)->b
second(_,y,_)=y
third::(a,b,c)->c
third(_,_,z)=z

