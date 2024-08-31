data(mtcars)

colors <- rainbow(length(unique(mtcars$carb)))[mtcars$carb]

plot(mtcars$disp,mtcars$wt,col=color,,xlab="disp",ylab="wt",cex=mtcars$carb-1)
lines(lowess(mtcars$disp,mtcars$wt))
unique_carbs <- unique(mtcars$carb)
legend_colors <- rainbow(length(unique_carbs))
legend_labels <- paste("Carb", unique_carbs)

# Add the legend to the plot
legend("bottomright", legend=legend_labels, fill=legend_colors, 
       title="Number of Carburetors",cex = .5)