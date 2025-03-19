#install.packages("tidyverse")
#install.packages("ggthemes")
#install.packages("palmerpenguins")
#install.packages("ggplot2")

library(tidyverse)
library (ggthemes)
library (palmerpenguins)
library(ggplot2)
peng<- palmerpenguins::penguins
View(data)
summary(data)

# in ggplot first write the data= name then 
# We determine what we will map in our dataset with mapping and which variables we will use
# Also, mapping is always used with the aes trigger function

# We start placing the data on the graph with geom
ggplot(data=peng, 
       mapping= aes(x= flipper_length_mm , y = body_mass_g),

       )+ # now let's place the data on the canvas with geom
  #note by the way, the addition sign should be right after the parenthesis

  geom_point(mapping = aes(color=species , shape=species))+
  geom_smooth(method = "lm")+
# lm means linear model use lm as method while smoothing the data
# If we want to create a line for all penguins, not for each penguin species, this time we perform the mapping process in the geom point and select the color
# that is, we perform the process in the second layer
  labs(title= "Body mass and flipper length",
       subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
       x= "Flipper length mm",y = "Body mass (g)",
       color = "Species", shape = "Species"

       )+
  scale_color_colorblind()

