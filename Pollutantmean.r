setwd(""/Users/shriarao/Github/datasciencecoursera/Coursera/specdata/")
pollutantmean <- function(directory, pollutant, id = 1:332) {
        fileList <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
        value = numeric()
        
        for (i in id) {
                data <- read.csv(fileList[i])
                value <- c(value, data[[pollutant]])        
        }
        mean(value, na.rm = TRUE)
}


pollutantmean("/Users/shriarao/Github/datasciencecoursera/Coursera/specdata/","sulfate", 1:10)

## 4.064128

pollutantmean("/Users/shriarao/Github/datasciencecoursera/Coursera/specdata/","nitrate", 70:72)

## 1.706047

pollutantmean("/Users/shriarao/Github/datasciencecoursera/Coursera/specdata/","nitrate", 23)

##  1.280833
