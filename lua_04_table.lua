--一维数组
cities = {"beijing", "shanghai", "guangzhou"}
cities[4] = "shenzhen"

for i = 1, 4 do
    print("cities["..i.."] = "..cities[i])
end    
print(cities[0]) -- nil
print(cities[1])


-- check if value 5 exist
if cities[5] then
    print("######")
else
    print("++++++")
end
cities[5] = "Chengdu"
if cities[5] then
    print("######")
else
    print("++++++")
end



-- 二维数组
arr = {}

--赋值
for i=1, 3 do
    arr[i] = {}
    for j=1, 2 do
        arr[i][j] = i*j
     end   
end


--print
for i=1, 3 do
    for j=1, 2 do
        print(arr[i][j])
        
    end    
end
-- 1 2 3 4 5 6



-- MAP (k:v)
emp = {name = "mike", age = 23, depart = "marketing"}
emp["gender"] = "M"
print(emp["name"])
print(emp["gender"])

emp.office = "2nd floor"
print(emp.age)
print(emp.office)


--定义map，其key为表达式
a = "XXX"
b = 3
c = 5

arr = {
    ["emp_"..a] = true, --列名可用[表达式]书写
    [b+c] = 123,
    ["hi"] = "Hello"   
}
print(arr.emp_XXX)
print(arr[8])
print(arr.hi)

-- MAP + table case 1
emp = {"beijing", name = "mike", age = 23, depart = "marketing", "guangzhou", "shenzhen"}
print(emp[1]) --beijing
print(emp.name) --key:value不占用索引值
print(emp[2]) --guangzhou
print(emp[3]) --shenzhen
print(emp[4]) --nil

--case 2
emps = {
    {name="mike", age =23},
    {name="leon", age =24},
    {name="leo", age =25},
    {name="jack", age =32}
}

for i=1, 4 do
    print(emps[i].name..":"..emps[i].age)
end
--mike:23
--leon:24 ...
