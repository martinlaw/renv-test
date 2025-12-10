library(ggplot2)
library(ggrepel)

# Create a new columns with the label only for row 2,3 and 14
mtcars$car = ""
idx_to_label = c(2, 20, 14)
mtcars$car[idx_to_label] = rownames(mtcars)[idx_to_label]

# Display the result
ggplot(mtcars, aes(wt, mpg, label = car)) +
  geom_text_repel() +
  geom_point(color = ifelse(mtcars$car == "", "grey50", "red"))
