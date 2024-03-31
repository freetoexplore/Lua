# 实现print(table)功能
emp = {"BJ", nil ,name = "mike", age = 21, "SH", depart = "marketing", "GZ", "SZ"}
meta= {
__add = function(tab,val)
	for k,v in pairs(tab) do
		if type(v) == 'number' then tab[k] = v+val
		elseif type(v) == 'string' then tab[k] = v..val
		end
	end
	return tab
end,

__tostring = function(tab)
	str = ''
	for k,v in pairs(tab) do 
		str = str..k..':'..v..' '
	end
	return str
end
};
setmetatable(emp, meta)

empsum = emp + 5
print(empsum)
