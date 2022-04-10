# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

<img alt="summary of linear progression of mpg" title="summary of linear progression of mpg" src="https://github.com/brown-rox20/MechaCar_Statistical_Analysis/blob/main/static/images/deliverable_1.png">

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

- Looking at the summary above we can see that the vehicle length and ground clearance of the car heavily affect the mpg rating of the car.

**Is the slope of the linear model considered to be zero? Why or why not?**

- The slope of the linear model cannot be considered zero due to our `p-value` which was `5.35e-11`.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

- With an R squared value of `0.7149`, or a 71% success rate, we can say this model does predict the mpg of MechaCar effectively.

## Summary Statistics on Suspension Coils

### Total summary

<img alt="total summary of suspension coil stats" title="total summary of suspension coil stats" src="https://github.com/brown-rox20/MechaCar_Statistical_Analysis/blob/main/static/images/deliverable_2_a.png">

### Summary by lot

<img alt="suspension coil stats by lot" title="suspension coil stats by lot" src="https://github.com/brown-rox20/MechaCar_Statistical_Analysis/blob/main/static/images/deliverable_2_b.png">

**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

- Looking at the total summary, the variance is `62.29`, so clearly the suspension coils do not exceed 100 pounds per square inch on the whole.

- When looking at the summary by lot, Lot 1 and Lot 2 are well within the variance limit, however Lot 3 exceeds the limit with a variance value of `170.29`. So we can see Lot 3 is skewing the data for all lots significantly.
