animal = {name= "Tom", age = 5 }

function animal:bark(voice)
	print(self.name..' is barking in '..voice..' tone')
end
animal:bark('meow')


animal2 = animal
animal = nil
animal2:bark('woff')
