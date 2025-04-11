local M = {}

local function say_my_name()
	print("Hello There!!! ")
end

function M.say_hello()
	print("Wassup ")
	say_my_name()
end

return M
