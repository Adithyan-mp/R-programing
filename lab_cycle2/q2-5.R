# Load the mtcars dataset
data(mtcars)

# Create the box plot
boxplot_hp <- boxplot(hp ~ gear, data=mtcars,
                      main="Box Plot of Horsepower by Number of Gears",
                      xlab="Number of Gears", ylab="Horsepower",
                      col=c("lightblue", "lightgreen", "lightcoral"),
                      pch=16, cex=1.5)


outliers <- boxplot_hp$out  

if(length(outliers) > 0) {
  for (i in 1:length(outliers)) {
    outlier_value <- outliers[i]  
    outlier_indices <- which(mtcars$hp == outlier_value)  
    
    
    for (j in outlier_indices) {
      outlier_label <- rownames(mtcars)[j]   
      gear_group <- mtcars$gear[j]  
      
      
      text(x = gear_group, y = outlier_value, labels = outlier_label, pos = 4, col = "red", cex = 0.8)
    }
  }
}
