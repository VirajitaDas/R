install.packages("tidyverse")
library(tidyverse)

mpg

#Help, what is in mpg document
?mpg
#View the file
view(mpg)
#structure of the file
str(mpg)
#Plot the file, blank display
ggplot(data = mpg)

#Scatter plot
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = cyl, y = hwy))

#Scatter plot
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

#Scatter plot, ALPHA used to get different shades
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

#Scatter plot, ALPHA used to get different shades, change in color
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class), color = "blue")

#Scatter plot, COLOR to show difference in class
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

#Scatter plot, SIZE to show difference in class through size
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

#Scatter plot, SHAPE to show difference in class through shape. Only six shapes can be formed
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

#Scatter plot of a different color
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "cyan")

#Mapping same variable to multiple aesthetics 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = hwy, y = hwy))

#Mapping a continuous variable to a shape
#Cannot be mapped
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = cyl))

?geom_point
#Stroke aesthetic, Increase size of the points 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, stroke = 2))

#Difference in color for displ > 3.5
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = displ > 3.5))

