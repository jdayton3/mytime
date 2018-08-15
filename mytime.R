#!/usr/bin/env Rscript

if (!require("pacman", quietly = TRUE)) install.packages("pacman")
p_load_gh("hadley/tidyverse", "tidyverse/googlesheets4")
p_load("lubridate")

sheet_url <- "https://docs.google.com/spreadsheets/d/11oDqgcAzuKgF1550oCSY7fP_5iyH5nrTuZtAwK23-Uk/edit?usp=sharing"

suppressMessages(
  timesheet <- read_sheet(sheet_url)
)

timesheet %>%
  group_by(Week = week(Date)) %>%
  summarize(Minutes = sum(Minutes)) %>%
  arrange(desc(Week)) %>%
  head(5)
