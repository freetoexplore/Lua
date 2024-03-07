--导入一个模块
require "rectangle"
--or
rect = require "rectangle"
print(rect.pi)
print("perimeter: "..rect.perimeter(2, 3))
print("area: "..rect.area(2, 3))

--与模块无关，无需调用rectangle.
print("golden ratio: "..golden_ratio)
print("maxcircularare: "..maxcirculararea(3,5))
--不能直接访问局部函数circulararea(5)，只能在对应全局函数文件内访问
