# Create course hex stickers ---------------------

# Load packages -----------------
pacman::p_load(tidyverse, hexSticker)


# Introduction to statistics -----
csp_2015 <- read_csv("CSP_2015.csv") %>% 
  mutate(region_fct = factor(region, levels = c("L", "NW", "NE", 
                                                "YH", "WM", "EM", 
                                                "EE", "SW", "SE"))) %>% 
  filter(authority != "Greater London Authority", 
         region_fct != "WM") %>% 
  ggplot(aes(x = region_fct, y = sfa_2015)) +
  geom_boxplot(width = .15, outlier.shape = NA, position = "dodge",
               fill = "#f8961e") +
  # Adds points, jittered as there is a lot of overlap
  geom_jitter(alpha = .3, width = .2) +
  labs(x = "Region", 
       y = "SFA (£ millions)")  +
  theme_light() +
  theme(panel.background = element_rect(fill = "#06d6a0"),
        plot.background = element_rect(fill = "#06d6a0"),
        axis.text = element_blank(),
        axis.title = element_blank())

ggsave(csp_2015, filename = "content/courses/intro_stats/boxplot.png")

hexSticker::sticker("content/courses/intro_stats/boxplot.png",
        package = "Intro to statistics", p_size = 15,
        s_width = .5, s_height = .5, s_x = 1, s_y = .8,
        h_fill = "#06d6a0", h_color = "black",
        filename = "content/courses/intro_stats/featured-hex.png")

# Inferential statistics -----
x <- seq(-4, 4, length=100)

y <- dnorm(x)

conf_int_data <- tibble(x_axis = x, y_axis = y, 
                        interval = factor(c(rep(0, 25), rep(1, 50), rep(0, 25))))

conf_int_shade <- tibble(x_axis = c(x[26], x[26:75], x[75]),
                         y_axis = c(0, y[26:75], 0))

conf_int_plot <- ggplot() +
  geom_line(data = conf_int_data, aes(x = x_axis, y = y_axis),
            linewidth = 1) +
  geom_polygon(data = conf_int_shade, aes(x = x_axis, y = y_axis), 
               fill = "#355070", colour = "black") +
  annotate("text", label = "95%", x = 0, y = .18, size = 10) +
  scale_x_continuous(breaks = -3:3, 
                     labels = c("", "-2SE", "", "Mean", "", 
                                "+2SE", "")) +
  theme(axis.title = element_blank(),
        axis.text.y = element_blank(),
        axis.text.x = element_text(size = 12),
        panel.background = element_rect("grey95"),
        panel.grid.major = element_line("grey90"),
        panel.grid.minor = element_blank())
  
sticker(conf_int_plot, p_size = 12,
        s_width = 1.2, s_height = .8, s_x = 1, s_y = .8,
        h_fill = "#177e89", h_color = "#0d3b66",
        package = "Inferential statistics", 
        filename = "content/courses/inferential_statistics/featured-hex.png")

# Intro to regression -----
# Create plot to add
reg_plot <- ggplot(data = cars, aes(x = speed, y = dist)) +
  geom_point(shape = 1, size = .75) +
  geom_smooth(method = "lm", linewidth = .6, colour = "black") +
  theme_classic() +
  theme(axis.title = element_blank(),
        axis.text = element_blank())

sticker(reg_plot, package = "Intro to regression", p_size = 15,
        s_width = 1.2, s_height = .8, s_x = 1, s_y = .8,
        h_fill = "#6d597a", h_color = "#001524",
        filename = "content/courses/regression_with_r/featured-hex.png")

# GAM -----
sticker("content/courses/generalised_additive_models/smooth_pic.png",
        package = "Intro to GAMs", p_size = 15,
        s_width = .45, s_height = .45, s_x = 1, s_y = .8,
        h_fill = "#8f2d56", h_color = "black",
        filename = "content/courses/generalised_additive_models/featured-hex.png")

