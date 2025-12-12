library(ggplot2)
library(ggthemes)

p <- ggplot(penguins, aes(x = flipper_len, y = body_mass, color = species, shape = species)) +
  geom_point(size = 2) +
  labs(
    title = "Flipper Length by Body Mass, by Species",
    x = "Flipper Length",
    y = "Body Mass",
    caption = "Data source: penguins dataset"
  )

p + theme_fivethirtyeight() + scale_color_fivethirtyeight()

