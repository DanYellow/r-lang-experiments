first.vector <- c("blue", "red", "black", "green", "green", "green")
first.factor <- factor(first.vector)

levels(first.factor)


barplot(table(first.factor))

first.matrix <- matrix(first.factor, 6, 1)
matrix(data=first.vector, dirnames=list(c(), c('colors', 'foo')))

first.array <- array(first.vector, c(2, 3, 2))
first.array
first.array[1, 1:3, 1]