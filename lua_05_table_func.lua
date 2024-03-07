--table.concat(table[,sep[,start[,end]]]):
--如果table是混合结构，那么连接与key-value无关，只连接数组元素
emp = {"beijing", name="mike", age = 23, "shanghai", depart = "marketing", "guangzhou", "shenzhen"}

--不用写for loop查数
print(table.concat(emp))--beijingshanghaiguanghzhoushenzhen
print(table.concat(emp, ",", 2, 3))--shanghai,guanghzhou





--table.unpack(table[,i[,j]])拆包

arr = {"beijing", "shanghai", "shenzhen"}
print(table.unpack(arr)) -- beijing shanghai shenzhen
print(table.unpack(arr, 2, 3)) --shanghai shenzhen

a, b, c, d = table.unpack(arr)
print(a) -- beijing




--table.pack()拆包
t = table.pack("apple", "peach", "banana")
print(table.concat(t, ",")) -- apple, peach, banana
print(t.n) -- 3




--table.maxn() --返回"数组"最大索引值
table.maxn = table.maxn or function(t) return #t end
emp = {"beijing", name = "mike", age = 23,depart = "marketing", "shanghai", "guangzhou", "shenzhen"}
print(table.maxn(emp))  --4

emp[5] = "tianjing" --不可有idx间隔, i.e. emp[8]
print(table.maxn(emp))  
print(table.concat(emp, ","))



