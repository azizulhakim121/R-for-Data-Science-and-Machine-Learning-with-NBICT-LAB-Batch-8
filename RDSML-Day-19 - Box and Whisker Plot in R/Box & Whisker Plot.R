# Loading the data set 
mydata = ToothGrowth

# Converting the variable dose from a numeric to a factor variable
mydata$dose = as.factor(mydata$dose)

library(ggplot2)

# Basic box plot
ggplot(mydata, aes(x = dose, y = len))+
  geom_boxplot()

# Rotating Box plot
ggplot(mydata, aes(x = dose, y = len))+
  geom_boxplot()+
  coord_flip()

# Notched Box Plot
ggplot(mydata, aes(x = dose, y = len))+
  geom_boxplot( notch = T)

# Changing out lier color, Shape, Size
ggplot(mydata, aes(x = dose, y = len))+
  geom_boxplot(outlier.color= "red", outlier.shape = 8,
               outlier.size = 3)

# Choosing which item to display
ggplot(mydata, aes(x = dose, y = len))+
  geom_boxplot(outlier.color= "red", outlier.shape = 8,
               outlier.size = 3) +
  scale_x_discrete(limits = c("2"))

# Changing box plot line colors by groups 
ggplot(mydata, aes(x = dose, y = len, color = dose))+
  geom_boxplot()

# Changing the item order
gplot(mydata, aes(x = dose, y = len, color = dose)) +
  geom_boxplot() +
  scale_x_discrete(limit = c("2", "1", "0.5"))

# Box plot with multiple groups
ggplot(mydata, aes(x = dose, y = len, fill = supp))+
  geom_boxplot()

# Changing the position
ggplot(mydata, aes(x = dose, y = len, fill = supp))+
  geom_boxplot(position = position_dodge(1))



  

