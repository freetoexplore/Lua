print("hello")

--string
str1 = 'beijing'
str2 = "china"
str3 = [[high tech zone]]
print(str1)
print(str2)
print(str3)

--local variable
local x = 3

--define function
function f()
-- global variable
    y = 5
    local z = 8
    print('x = '..x)
    print('z = '..z)--can't visit z outside function
    
end

--visit function
f();

--visit gloval variable
print("y = "..y)

--re-assign value y
y = "beijing"
print("y2 = "..y)
