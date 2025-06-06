# Vectors in R (Data structure)
# Creating a vector using the c() command
student.height = c(60, 69, 55, 62)
student.height

# checking the class of the vector student.height
is.numeric(student.height)
is.logical(student.height)

# R automatically converts numeric to text,
# when you have a text item in the vector
b = c(5, 8, 2, "sv")
b
is.numeric(b)
is.character(b)
is.logical(b)
# we can convert data types
# For example from numeric to character
a = c(1, 2, 3, 4, 5)
class(a)
is.numeric(a)
a= as.character(a)
class(a)
a
class(a)

# Logical operator TRUE or FALSE when Converted 
# to numeric, TERUE Converts to 1
# and FALSE converts to 0
d = c(TRUE, FALSE, FALSE, TRUE, FALSE)
d = as.numeric(d)
d
# Converting numeric to logical(1 or any number
# other than 0 converts to TRUE, 0 converts to FALSE)
d = as.logical(d)
d
e = c(1, 0, 0, 1, 23, -23, -7)
e = as.logical(e)
e
# Creating sequential vector
# Creating a vector starting from 1 to 10
my_seq =c(1:50, 80, 90,77, 87)
my_seq

# Creating a sequential vector using the seq() function
new_seq = c(seq(1,10))
new_seq

# sequence in steps of 3
new_seq = c(seq(1,10, by=3))
new_seq

# Vector can have characters
names = c("Elius", "AQib", "Mahfuza", "Ashraf", "Chaitali")
names
names[3]
names[4:5]

# Assigning name to vector values
my_vAlues = c(4,7, 9, 11)
names(my_vAlues) = c("a", "b", "c", "d")
my_vAlues
my_vAlues["c"]
