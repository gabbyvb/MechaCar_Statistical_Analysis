# MechaCar Statistical Analysis

## Linear Regression to Predict MP
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - Vehicle Length
  - Ground Clearance
  - Intercept
- Is the slope of the linear model considered to be zero? Why or why not?
  - No because the p-value is 5.35e-11 which is less than 0.05. Meaning there is sufficient evidence to reject our null hypothesis and that the slope is not zero.
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - Yes because the R-squared is 0.7149. 71.5% of the variablilty of MPG is explained using this linear model.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The total manufacturing lots meet this design speficiation (Variance = 62.29), however, Lot 3 does not meet this requirment individually (Variance = 170.29)

Total Summary

<img width="285" alt="Total_Summary" src="https://user-images.githubusercontent.com/89493488/144765851-3005c93e-b28b-4bf8-b07b-0a39466f850e.png">

Lot Summary

<img width="439" alt="Lot_Summary" src="https://user-images.githubusercontent.com/89493488/144765855-69ef94f9-c319-4d37-9fe3-aabbb16c3319.png">

## T-Tests on Suspension Coils

From conudcting a t-test on the total sample and each lot, we can see that in Lot 3, we have do have sufficient evidence to reject the null hypothesis. The p-value is 0.4168 which is less than 0.05. Therefore the mean for Lot 3 is statsitically different than the population mean. For the total sample, and Lots 1 & 2, we do not have sufficient evidence to reject the null hypothesis, therefore the two means are statistically similar.

T-test on Total

````
t.test(suspension_table$PSI, mu=1500)

	One Sample t-test

data:  suspension_table$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 
````

T-test on Lot 1

````
t.test(subset(suspension_table,Manufacturing_Lot=="Lot1")$PSI, mu=1500)

	One Sample t-test

data:  subset(suspension_table, Manufacturing_Lot == "Lot1")$PSI
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500  
````

T-test on Lot 2

````
t.test(subset(suspension_table,Manufacturing_Lot=="Lot2")$PSI, mu=1500)

	One Sample t-test

data:  subset(suspension_table, Manufacturing_Lot == "Lot2")$PSI
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2
````

T-test on Lot 3

````
t.test(subset(suspension_table,Manufacturing_Lot=="Lot3")$PSI, mu=1500)

	One Sample t-test

data:  subset(suspension_table, Manufacturing_Lot == "Lot3")$PSI
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 
````

## Study Design: MechaCar vs Competition
What metric or metrics are you going to test?
- Cost & Safety Rating

What is the null hypothesis or alternative hypothesis?
- H0 : The slope of the linear model is zero
- Ha : The slope of the linear model is not zero

What statistical test would you use to test the hypothesis? And why?
- I would use a simple linear regression to determine if we can predict safety rating based on the cost of the car.

What data is needed to run the statistical test?
- The cost and safet rating of various vehicles.
