# Factors in R
# Summary of numeric items
participants_age = c(78, 25, 68, 45, 48, 36)
summary(participants_age)

# Finding Summary of characters
profession = c("Doctor", "Teacher","Teacher", "Businessman", "Teacher")
summary(profession)  #Not Desired. so We need to convert it to factor function

profession = factor(profession)
summary(profession)

# Putting the summary in order 
birth_month = c("Jan", "Dec", "Apr", "Aug", "jan", "Mar", "jul", "Jan","Dec","Apr", "Aug", "Jun", "Jan", "Dec", "Apr", "Aug", "jan", "Mar", "jul", "Jun")
summary(birth_month)
birth_month_fact = factor(birth_month, ordered = TRUE,
                          levels = c("Jan", "Feb", "Mar", "Apr", "May", "jun", "jul", "Aug", "sep", "Oct", "Nov", "Dec"))
summary(birth_month_fact)

# Lists in R 
# Lists are used to place number of items in a bundle
a = c(2, 4, 7)
b = c("Red", "Green", "Blue")
c = "welcome!"

my_list = list(a, b, c)
my_list
# Naming the list items
my_list = list(pieces = a, colors = b, message =c)
my_list

# Calling a specific data structure
my_list[3]
my_list['colors']
my_list$colors

# calling specific items from the data structure
my_list$colors[1]
