Dog = {}

-- NOTE: `:method()` is used as short for .method(self)
function Dog:new()
	newObj = { sound = "woof" }
	self.__index = self
	return setmetatable(newObj, self)
end

mrDog = Dog:new()

function Dog:makeSound()
	print("I say " .. self.sound)
end

for key, value in pairs(mrDog) do
	print(key, value)
end

mrDog:makeSound()

-- INHERITANCE

LoudDog = Dog:new() -- 1.

-- NOTE: overwriting inherited method
function LoudDog:makeSound()
	s = self.sound .. " "
	print(s .. s .. s)
end

seymour = LoudDog:new()
seymour:makeSound()

function LoudDog:new()
	newObj = { sound = "wassup" }
	self.__index = self
	return setmetatable(newObj, self)
end

seymour2 = LoudDog:new()
seymour2:makeSound()
