library(dplyr)
#import Mecha car dataset
mecha_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
# Linear Regression
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_table)
# Determine the p-value and the r-squared value
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_table))
