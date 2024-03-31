emp = {"BJ", nil ,name = "mike", age = 21, "SH", depart = "marketing", "GZ", "SZ"}

setmetatable(emp, {
__call = function(tab, num, str)
	for k, v in pairs(tab) do 
		if type(v) == 'string' then tab[k] = v..str
		elseif type(v) == 'number' then tab[k] = v+num
		end
		
	end
	return tab
end
})

empsum = emp(5, ' hello')

for k, v in pairs(empsum) do
	print(k..':'..v)
end
