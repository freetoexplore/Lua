emp = {"BJ", nil ,name = "mike", age = 21, "SH", depart = "marketing", "GZ", "SZ"}
meta= {
__mul = function(tab,val)
	for k,v in pairs(tab) do
		if type(v) == 'number' then tab[k] = v*val
		elseif type(v) == 'string' then tab[k] = v..'*'..val
		end
	end
	return tab
end
};
setmetatable(emp, meta)

empsum = emp * 5
for k,v in pairs(empsum) do
	print(k..':'..v) 
end
