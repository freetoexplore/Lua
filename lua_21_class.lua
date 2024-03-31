Animal = {name= "no name", age = 0 }

function Animal:bark(voice)
	print(self.name..' is barking in '..voice..' tone')
end

function Animal:new()
	local a = {location = 'NY'} --赋值没有，才会遍历元表
	setmetatable(a, {__index=self}) --read
	return a
end 

animal = Animal:new()
print(animal)

-- 赋值 a={}
animal.name = 'Tom' -- write
animal.age = 3
animal.type = 'Cat'
print(animal.name..' is '..animal.age..' is '..animal.type..' is living in '..animal.location)
------------------------------------------------------------------------------
for k,v in pairs(animal) do
	print(k..':'..v)
end
------------------------------------------------------------------------------
animal2 = Animal:new()
print(animal2)

function animal2:skill()
	return 'hunting rats'
end

print(animal2.name..' is '..animal2.age..' is '..animal2.skill()) --no name is 0 is hunting rats

