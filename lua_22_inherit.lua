# 带参构造器
Animal = {name= "no name", age = 0 }

function Animal:bark(voice)
	print(self.name..' is barking in '..voice..' tone')
end
---------------------------------------无参-------------------------------------
function Animal:new()
	local a = {location = 'NY'}
	setmetatable(a, {__index=self}) 
	return a
end 


test1 = Animal:new()
for k, v in pairs(test1) do
	print('test1 '..k..':'..v)
end
-- test location:NY
----------------------------------------有参--------------------------------
function Animal:new(obj)
	local a = obj or {}
	
	if type(obj) == 'table' then a = obj
	elseif type(obj) == 'string' then a = obj
	end
	
	setmetatable(a,{__index=self})
	return a
end

test2 = Animal:new({string ='hi', name = "Jerry"})
for k, v in pairs(test2) do
	print(k..':'..v)
end
--name:Jerry
--string:hi
-----------------------------------------继承--------------------------------------
kid_class = test2:new() --Animal:new({string ='hi', name = "Jerry"})
kid_class.name = "James"

for k, v in pairs(kid_class) do
	print(k..':'..v)
end


