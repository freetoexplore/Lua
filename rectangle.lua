--可以把公用代码放在一个文件里，以API接口形式在其他地方调用。
--有利于代码重用、降低耦合度。
--1.模块文件由table组成。
--2.table中添加变量、函数
--3.文件返回table
--其他文件中需要使用该模块，通过require导入。

--声明一个模块
rectangle = {}

--与模块有关
--1.添加变量
rectangle.pi = 3.14
--1.函数
function rectangle.perimeter(a, b)
	return (a+b)*2
end

--1.匿名函数
function rectangle.area(a, b)
	return a*b
end


--与模块无关
--global variable
golden_ratio = 0.618

--local variable
local function circulararea(r)
	return rectangle.pi*r*r
end

--global variable
function maxcirculararea(a, b)
	local r = math.max(a, b)
	return circulararea(r)
end	


return rectangle
