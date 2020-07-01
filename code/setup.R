## @knitr setup

knitr::opts_chunk$set(
        echo = TRUE,
        message = FALSE,
        warning = FALSE
)
knitr::opts_chunk$set(message = FALSE)
knitr::opts_chunk$set(warning = FALSE)
#set any missing Nas int ables to blank
options(knitr.kable.NA='')

library(fivethirtyeight)
library(tidyverse)
library(knitr)
library(kableExtra)
library(ggthemes)

## @knitr loadData


data("weather_check", package="fivethirtyeight")
sdat <- weather_check %>%
        filter(region==params$region)