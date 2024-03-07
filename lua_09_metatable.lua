--metatable: 描述原表的表
--元方法：元表中定义的普通表的默认行为
emp = {"BJ", nil ,name = "mike", age = 21, "SH", depart = "marketing", "GZ", "SZ"}
print(emp.name)--mike

--声明一个元表
meta = {};
--将原始表与元表相关联
setmetatable(emp,meta)
--重写方法可以是一个函数: 匿名函数 + __index元方法
meta.__index = function(tab, key)
	return key.." key does not exist"
end
print(emp.X) -- X key does not exist
print(emp[2]) -- 2 key does not exist
print(emp[3]) -- SH








--重写方式可以是另一个表
emp = {"BJ",name = "mike", age = 21, "SH", depart = "marketing", "GZ", "SZ"}
print(emp[5]) -- nil
meta = {}
setmetatable(emp, meta)

--再定义一个普通表
other = {}
other[5] = "TJ"
other[6] = "XA"

meta.__index = other
print("after meta set "..emp[5]) --TJ: 返回元表指定的普通表
--在原表中找不到值，会到元表指定的普通表中查找
