#!/usr/bin/env Rscript

WEEKLY_GOAL_MINUTES <- 500
SHEET_URL <- "https://docs.google.com/spreadsheets/d/11oDqgcAzuKgF1550oCSY7fP_5iyH5nrTuZtAwK23-Uk/edit?usp=sharing"

if (!require("pacman", quietly = TRUE)) install.packages("pacman")
p_load_gh("hadley/tidyverse", "tidyverse/googlesheets4")
p_load("lubridate")

suppressMessages(
  timesheet <- read_sheet(SHEET_URL)
)

cat("\n")

cat(sprintf("Goal: %d minutes of research per week.\n", WEEKLY_GOAL_MINUTES))
timesheet %>%
  group_by(Week = week(Date)) %>%
  summarize(Minutes = sum(Minutes)) %>%
  mutate(Completion = Minutes / WEEKLY_GOAL_MINUTES) %>%
  arrange(desc(Week)) %>%
  head(5) %>%
  data.frame()

cat("\n")

cat(sprintf("Minutes tracked so far today (%s)\n", today()))
timesheet %>%
  group_by(Date, Category) %>%
  summarize(Minutes = sum(Minutes)) %>%
  filter(Date == today()) %>%
  ungroup() %>%
  select(-Date) %>%
  data.frame() %>%
  bind_rows(summarise_all(., funs(if(is.numeric(.)) sum(.) else "Total")))

cat("\n")
