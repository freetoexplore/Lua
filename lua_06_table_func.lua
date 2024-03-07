--table.insert(table,[pos,]value):
--插入元素，其后元素会被后移
cities = {"BJ", "SH", "GZ"}

table.insert(cities, 2, "SZ")
table.insert(cities, 2, "SZ")
table.insert(cities, 2, "SZ")
table.insert(cities, "TJ") --default: last idx
print(table.concat(cities,","))

table.remove(cities, 2) -- remove SZ
print("remove ix 2: "..table.concat(cities,","))





--排序不能放nil, 同名idx先后不一定
--ascending
table.sort(cities)
print("ascending: "..table.concat(cities,","))

--decending
table.sort(cities,function(a, b)
			return a>b
		  end
)
print("decending: "..table.concat(cities,","))
