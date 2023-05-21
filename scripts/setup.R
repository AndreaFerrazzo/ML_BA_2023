####### Load the required packages
packages <- c(
  "knitr", "here", "tidyverse", "summarytools", "janitor", "viridis", "corrplot", "DataExplorer", "kableExtra",
  "caret",
  "kernlab",#for SVM
  "rpart", "rpart.plot", "adabag"#for CART
)
purrr::walk(packages, library, character.only = TRUE)


####### Report Options

# general options
options(
  digits = 3,
  str = strOptions(strict.width = "cut"),
  width = 69,
  tibble.width = 69,
  cli.unicode = FALSE
)

# ggplot options
theme_set(theme_light())
theme_update(plot.title = element_text(hjust = 0.5), plot.subtitle = element_text(hjust = 0.5))

# knitr options
opts_chunk$set(
  comment = "#>",
  message = FALSE,
  warning = FALSE,
  fig.align = "center",
  echo = TRUE,
  cache = TRUE
)
