animal = {name= "Tom", age = 5 -- , bark = animal.bark = function(voice)
				--		print(name..' is barking in '..voice..' tone')
				--		end
 }

animal.bark = function(voice)
	print(animal.name..' is barking in '..voice..' tone')
end
animal.bark('meow')

