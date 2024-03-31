require "meta"

emp = {"BJ", nil ,name = "mike", age = 21, "SH", depart = "marketing", "GZ", "SZ"}

setmetatable(emp, meta)

empsum = emp + 5
print(empsum)

--meta.__index = function(tab, key)
--			print('key '..key..' not found')
--		end
--print(emp[1])
--print(emp[21])
