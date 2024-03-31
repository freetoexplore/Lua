emp = {"BJ", nil ,name = "mike", age = 21, "SH", depart = "marketing", "GZ", "SZ"}
meta= {}
setmetatable(emp, meta)

-- 使用.__index关联meta和other表，继承索引
other = {}
other[5] = 'TJ'
other[6] = 'XA'

meta.__index=other
print(emp[5])
