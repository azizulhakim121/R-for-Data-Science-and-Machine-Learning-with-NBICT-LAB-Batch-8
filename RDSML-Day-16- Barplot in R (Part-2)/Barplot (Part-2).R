# Creating a data frame
dataset = data.frame(dose = c("D0.5", "D1", "D2"), 
                     len = c(4.2, 10, 29.5))

library(ggplot2)

# Basic barplot
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity")

# Horizontal bar plot
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity") +
  coord_flip()

# Changing the width of bars
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity", width = .5)

# Changing colors
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity", color = "blue", fill = "white", width = .5)

# Minimal theme with blue fill color
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_minimal()

# Bar plot with labels
# Outside bars
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = len), vjust = -0.5, size = 3, color = "#9F9F9F") +
  theme_minimal()

# Inside bars
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = len), vjust = 1.6, size = 3, color = "white") +
  theme_minimal()

myCarData = mtcars

# Bar plot of counts
# To make a bar plot of counts, we will use mtcars data set

ggplot(data = myCarData, aes(x = factor(cyl))) +
  geom_bar(stat = "count", width = 0.7, fill = "steelblue") +
  theme_minimal()

# Changing bar plot line colors by groups
print(dataset)
ggplot(dataset, aes(x= dose, y= len, color = dose ))+
  geom_bar(stat = "identity", fill = "white")

# Using custom color palettes
ggplot(dataset, aes(x= dose, y= len, color = dose ))+
  geom_bar(stat = "identity", fill = "white")+
  scale_color_manual(values = c("blue", "red", "green"))

# Using custom color from hexadecimal code
ggplot(dataset, aes(x= dose, y= len, color = dose ))+
  geom_bar(stat = "identity", fill = "white")+
  scale_color_manual(values = c("#e77212", "#7ce712", "#fb180e"))

# Using brewer color palettes
ggplot(dataset, aes(x= dose, y= len, color = dose ))+
  geom_bar(stat = "identity", fill = "white")+
  scale_color_brewer(palette = "Dark2")

# Using grey scale
ggplot(dataset, aes(x= dose, y= len, color = dose ))+
  geom_bar(stat = "identity", fill = "white")+
  scale_color_grey()+
  theme_classic()

#changing bar plot fill color by group
ggplot(dataset, aes(x= dose, y= len, fill = dose ))+
  geom_bar(stat = "identity")+
  theme_minimal()

p = ggplot(dataset, aes(x= dose, y= len, fill = dose ))+
  geom_bar(stat = "identity")+
  theme_minimal()

p + scale_fill_manual(values = c("#e77212", "#7ce712", "#fb180e"))
p + scale_fill_brewer(palette = "Dark2")
p + scale_fill_grey()
p + scale_fill_brewer(palette = "Dark2")


# Using black outline color
ggplot(dataset, aes(x= dose, y= len, fill = dose ))+
  geom_bar(stat = "identity", color = "black")+
  scale_color_manual(values = c("#e77212", "#7ce712", "#fb180e"))


ggplot(dataset, aes(x= dose, y= len, fill = dose ))+
  geom_bar(stat = "identity", color = "black")+
  scale_color_manual(values = c("#e77212", "#7ce712", "#fb180e"))+
  theme(legend.position = "top")

