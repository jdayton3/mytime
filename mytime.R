#!/usr/bin/env Rscript

library(googlesheets4)
options(warn = -1)
suppressMessages(
  library(tidyverse, quietly = TRUE)
)
suppressMessages(
  library(lubridate)
)

sheet_url <- "https://docs.google.com/spreadsheets/d/11oDqgcAzuKgF1550oCSY7fP_5iyH5nrTuZtAwK23-Uk/edit?usp=sharing"

suppressMessages(
  timesheet <- read_sheet(sheet_url)
)

timesheet %>%
  group_by(Week = week(Date)) %>%
  summarize(Minutes = sum(Minutes)) %>%
  arrange(desc(Week)) %>%
  head(5)
