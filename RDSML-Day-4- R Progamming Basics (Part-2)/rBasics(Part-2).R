#Data Types in R
# 1. Numeric -Integer / Floating point
# 2. string/character
# 3. Logical

a = 11
b = 7.19
class(a)
class(b)

name = 'sadhan Verma'
print(name)
class(name)

c = '52'
print(c+9)
print(a+9)
class(c)

# Logical Data Type - TRUE, FALSE (T, F)
a > b
class(a > b)
print( a < b)
x = 19
y = 22-3
print( x == y)
print( x != y)
print( x >= y)

# Logical Operator in R
# && Logical Operator
# || Logical Operator
4 == 4 && 5 == 5
x != y || x == y
# simple Mathematical Operator in R
z = 6 + 9 - 8 * 2 / 3
print(z)

w = 4 + 3 -3 * 2 / 3
print(w)
y = 4^3
print(y)
11 / 5
11 %% 5
11 %/% 5
