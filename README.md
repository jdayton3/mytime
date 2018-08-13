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
# A tibble: 1 x 2
   Week Minutes
  <dbl>   <dbl>
1    33      45
```
