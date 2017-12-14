library(plotly)

plot_ly(
  data = iris, 
  x = ~Sepal.Length, 
  y = ~Petal.Length
)

library(ggplot2)

plot_gg <- ggplot(
  data = iris, 
  aes(
    x = Sepal.Length, 
    y = Petal.Length, 
    color = Species)
) + 
  geom_point(size = 4, alpha = 0.6) + 
  theme_minimal()

ggplotly(plot_gg)

plot_gg <- ggplot(
  data = iris, 
  aes(
    x = Sepal.Length, 
    y = Petal.Length, 
    color = Species, 
    text = paste(
      "Petal.Width", Petal.Width, 
      "\n Sepal.Width", Sepal.Width))
) + 
  geom_point(size = 4, alpha = 0.6) + 
  theme_minimal()

ggplotly(plot_gg)

htmlwidgets::saveWidget(
  widget = plotly_gg, file = "tooltip.html")

plot_ly(
  x = c("lwy", "słonie", "małpy"),
  y = c(20, 14, 23),
  name = "Warszawa",
  type = "bar"
)

zoo <- data.frame(
  Animals = c("lwy", "słonie", "małpy"), 
  Warszawa = c(20, 14, 23), 
  Wroclaw = c(12, 18, 29))

plot_ly(
  data = zoo, 
  x = ~Animals, 
  y = ~Warszawa, 
  type = 'bar', 
  name = 'Warszawa'
) %>%
  add_trace(
    y = ~Wroclaw, name = 'Wrocław') %>%
  layout(
    yaxis = list(title = 'Łącznie'),
    xaxis = list(title = 'Zwierzęta'), 
    barmode = 'group')

