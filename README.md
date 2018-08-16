# My Time

A quick & dirty way to track the time I spend working on my research and to get metrics on how much work I'm doing.

Uses [this Google Sheet](https://docs.google.com/spreadsheets/d/11oDqgcAzuKgF1550oCSY7fP_5iyH5nrTuZtAwK23-Uk/edit#gid=0).

## Requirements

- The [R programming language](https://www.r-project.org/)
- The [tidyverse](https://tidyverse.tidyverse.org/) R package
- The [googlesheets4](https://googlesheets4.tidyverse.org/) R package
- A *nix machine with a `~/.local/bin/` directory on your `$PATH`

## Install

To install, assuming you have a *nix computer and a `~/.local/bin` folder on your `$PATH`:

```bash
bash install.sh
```

Then run:

```bash
$ mytime

Goal: 500 minutes of research per week.
  Week Minutes Completion
1   33     190       0.38

Minutes tracked so far today (2018-08-15)
  Category Minutes
1   coding      40
2 planning      35
3  reading      35
4  writing      20
5    Total     130
```

## Personalize

To change the weekly minutes goal and the Google Sheet the code gets the data from, adjust the `WEEKLY_GOAL_MINUTES` and `SHEET_URL` in [`mytime.R`](mytime.R)
