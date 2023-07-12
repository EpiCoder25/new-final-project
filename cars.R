# importing all libraries, below
library(tidyverse)
library(primer.data)
library(rstanarm)

cars_graph <- cars |> ggplot(aes(x = displacement, y = mpg)) + geom_point(mapping = aes(color = mpg)) + labs(title = "The Effect of Engine Displacement on Gas Mileage",
                                                                                                             x = "Engine Displacement",
                                                                                                             y = "Miles Per Gallon",
                                                                                                             subtitle = "Generally, as engine displacement increases,
       gas mileage decreases",
                                                                                                             caption = "Kaggle: Car Information Dataset") + theme_classic() + geom_smooth(method = "lm")
# Add a theme_classic makes it more organized