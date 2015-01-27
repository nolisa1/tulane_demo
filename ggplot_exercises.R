#  Afternoon ggplot exercises at Tulane
install.packages("ggplot2", dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

library("ggplot2")
library("plyr")
library("ggthemes")
library("reshape2")
head(iris)
iris[1:2]
iris[1:2, ]
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))
summary(myplot)
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(size = 3)
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
ggplot(diamonds, aes(x = carat, y = price, color = color)) + geom_point(size = 2)
library(MASS)
ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot() + geom_point()
summary(myplot)
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point() + facet_grid(Species ~ .)
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point() + facet_grid( ~ Species)
df <- melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) + geom_bar(stat = "identity", position = "dodge") + scale_fill_brewer(palette = "Set1")
df <- melt(cut, id.vars = "diamonds")
ggplot(d2, aes(clarity, fill = cut)) + geom_bar(position = "dodge") 
