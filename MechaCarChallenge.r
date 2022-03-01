# Load the dplyr package
library(dplyr)

# Create data frame 
mechaCar_mpg <- read.csv('MechaCar_mpg.csv', stringsAsFactors=F)

# Create linear model
lin_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar_mpg)

# Generate summary statistics
summary(lin_model)

# create data frame
suspension_coil <- read.csv('Suspension_Coil.csv', stringsAsFactors=F)

# Create summary data frame
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Create summary data frame grouped by lot
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Test if PSI across all lots is statistically different from the population mean 
t.test(suspension_coil$PSI, mu=1500)

# Test if PSI for each lot is statistically different from the population mean
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot=="Lot1"), mu=1500)
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot=="Lot2"), mu=1500)
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot=="Lot3"), mu=1500)