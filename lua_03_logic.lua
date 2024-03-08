-- elseif
a = 5

if a>0 then 
    print("num >0")
    
elseif num ==0 then
    print("num=0")
    
else
    print("num<0")
end



-- while
a = 3 
while a > 0 do
    print(a)
    a = a - 1
end




-- until
a = 3
repeat 
    print(a)
    a = a - 1
until a <=0





-- for
for a = 10, 50, 20 do -- a=10, a <= 50, a = a + 20
    print(a)
end




-- break (only in loop)
for a = 1, 9, 1 do
    print(a)
    if a == 5 then
        break
        
    end
end




-- goto (for loop)

function f(a)
    ::flag::print("##########")
    if a > 1 then 
      print(a)
      a = a - 1
      goto flag
    end
end

f(5);


--########
--5
--########
--4
--########
--3
--########
--2
--########

