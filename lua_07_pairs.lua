--迭代器
--pairs(table) ipairs(table数组) 应用于for loop遍历指定table
emp = {"beijing", name="mike", age = 23, "shanghai", depart = "marketing", "guangzhou", "shenzhen"}

for k,v in ipairs(emp) do
    print(k.."-"..v)
end


for k,v in pairs(emp) do
    print(k.."-"..v)
end



