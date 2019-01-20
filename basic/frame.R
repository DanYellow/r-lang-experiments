# data <- data(ChickWeight)
# head(ChickWeight)
# View(ChickWeight)
# ChickWeight$hello <- c(1:nrow(ChickWeight))

# dir()
setwd("~/projects/r-lang/basic")
prenoms = read.csv("prenoms-quebec.csv", header = TRUE)
str(prenoms)

# browseURL("http://danyellow.net")
# x <- 9; x
# x
# # prenoms <- source("crimes.csv")
# # names(prenoms)
# # prenoms
# freq <- table(prenoms$X1991)
# rank <- rank(prenoms$X1991)
# hist(rank)
# describe(rank)
# # freq <- freq[order(freq, decreasing = T)]
# # freq
# 
# n2 <- rnorm(1000)
# hist(n2)