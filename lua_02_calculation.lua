a = 5/2
print(a) -- 2.5

b = 5//2
print(b) -- 2

c = 5%2 
print(c) -- 1

d = (a + b)*c
print(d)

str = "abcd"
print("str length: ".. #str) -- string length

--固定参函数
function f(a, b)
print(a, b)
end

f(1,2); --1   2
f();  --nil nil
f(10); --10  nil
f(1, 2, 3); --1   2

--定义一个普通函数，包含可变参
function f(...)
    local a, b, c, d=...
    print(a, b, c, d)
    print(...) --可变参
end
    
f(10, 20, 30); -- 10  20  30 nil
f(10, 20 , 30 , 40); -- 10  20  30  40
f(10, 20 , 30 , 40,  50); -- 10  20  30  40  50


--函数返回多个值
function f(a, b)
    local sum = a+b
    local mul = a*b
    return sum, mul
end

m, n = f(3, 5)
print(m, n)


--函数作为参数值
function sum(a, b)
    return a+b
end

function mul(a,b)
    return a*b
end

function f(m, n, fun)
    local result = fun(m, n)
    print(result)
end
--调用普通函数
f(3, 5, sum);
f(3, 5, mul);

--调用匿名函数
f(3, 5, function(a, b)
	return a-b;
		end
)


