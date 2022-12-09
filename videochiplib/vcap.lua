-- Library for apfrog
local lib = {}

lib.inputconversion = -- Returns an input between 100 or -100 in the form of 1 or -1
function(x,y)
	x = x / 100
	y = y / 100
	return x, y
end

lib.inputdebug = -- Prints out an input thingy
function(input)
	print("------------")
	print(input)
	print("------------")
	print("------------")
end

return lib


