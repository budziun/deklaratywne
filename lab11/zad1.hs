row_log:: Bool->Bool->Bool
row_log p q = if p==q then True
	      else False

first::(a,b,c)->a
first(x,_,_)=x
second::(a,b,c)->b
second(_,y,_)=y
third::(a,b,c)->c
third(_,_,z)=z

-- (3+4*5:4:[6,[2],3])!!lenght[2,3,4]= 
-- (3+20:4:[6,[2],3])!!lenght[2,3,4]=
-- (23:4:[6,[2],3])!!lenght[2,3,4]=
-- (23:[4,6,[2],3])!!lenght[2,3,4]=
-- ([23,4,6,[2],3])!!lenght[2,3,4]=
-- ([23,4,6,[2],3])!!3 = [2]

-- (reverse[5,2,1,7]++tail[2,3])!!head[1,1,3]
-- ([7,1,2,5]++tail[2,3])!!head[1,1,3]
-- 