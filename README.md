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
