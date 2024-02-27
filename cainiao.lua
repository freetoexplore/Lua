print("Hello World!")
--[[print("Hi")
print("Morning")]]
print("Hola")

str1 = "中国"
str2 = '北京'
str3 =[[成都
高新区
天府五街
]]
print(str1)
print(str2)
print(str3)

print("*****************赋值******************")
b = 10
print('b='..b)

print("*****************数据类型******************")
print(type("Hello world"))      --> string
print(type(10.4*3))             --> number
print(type(print))              --> function
print(type(type))               --> function
print(type(true))               --> boolean
print(type(nil))                --> nil
print(type(type(X)))  		--> string

print("*****************for loop in dict 1******************")
tab1 = { key1 = "val1", key2 = "val2",  "val3" }
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

print("*****************dict val in dict******************")
a = {["key1"] = "name1", [true] = 2, [1] = 2, ['1'] = 4, ['name5'] = "root"}
print('first value: '..a[true])
print('second value: '..a.key1)
print('third value: '..a["name5"])

print("*****************for loop in dict 2******************")
a = {["key1"] = "1", [true] = 2, [3] = 3, ['4'] = 4, ['name5'] = 'root'}
for k, v in pairs(a) do
    print(k..':'..v) 
end
