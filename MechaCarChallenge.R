library(dplyr)
#import Mecha car dataset
mecha_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
# Linear Regression
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_table)
# Determine the p-value and the r-squared value
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_table))
#import Suspension Coil dataset
suspension_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
# Create Total Summary
total_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
# Create Lot Summary
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
# T-test on total
t.test(suspension_table$PSI, mu=1500)
#T-test on Lot 1
t.test(subset(suspension_table,Manufacturing_Lot=="Lot1")$PSI, mu=1500)
#T-test on Lot 2
t.test(subset(suspension_table,Manufacturing_Lot=="Lot2")$PSI, mu=1500)
#T-test on Lot 3
t.test(subset(suspension_table,Manufacturing_Lot=="Lot3")$PSI, mu=1500)
