animal = {name= "Tom", age = 5 }

function animal.bark(self, voice)
	print(self.name..' is barking in '..voice..' tone')
end
animal.bark(animal, 'meow')


animal2 = animal
animal = nil
animal2.bark(animal2, 'woff')
