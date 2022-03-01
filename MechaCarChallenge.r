# Load the dplyr package
library(dplyr)

# Create data frame 
mechaCar_mpg <- read.csv('MechaCar_mpg.csv', stringsAsFactors=F)

# Create linear model
lin_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar_mpg)

# Generate summary statistics
summary(lin_model)