library(tidyverse)

g <- tibble(a = c(LETTERS, "")) %>%
  mutate(x = row_number()) %>%
  ggplot(aes(x, 1)) +
  geom_text(aes(label = a, angle = -(x - 1) * 90 / (2 * pi))) +
  coord_polar() +
  theme_void()
g %>% ggsave(filename = "plot.png")
