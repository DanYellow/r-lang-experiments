# data <- data(ChickWeight)
# head(ChickWeight)
# View(ChickWeight)
# ChickWeight$hello <- c(1:nrow(ChickWeight))

# dir()
setwd("~/projects/r-lang/basic")
prenoms = read.csv("prenoms-quebec.csv", header = TRUE)

# prenoms <- source("crimes.csv")
# names(prenoms)
# prenoms
subset(prenoms, 1984==1)
