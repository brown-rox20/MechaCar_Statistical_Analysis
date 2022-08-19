# MechaCar_Statistical_Analysis

### Background

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

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

## T-Tests on Suspension Coils

### T-test for all lots

<img alt="t-test total" title="t-test total" src="https://github.com/brown-rox20/MechaCar_Statistical_Analysis/blob/main/static/images/deliverable_3_total.png">

When performing a `t-test` on all lots we see a mean of `1498.78`, which is very close to the `1500` benchmark. With the level of signifigance at `0.05`, and our `p-value` ending up being close but higher at `0.06`, the null hypothesis cannot be rejected.

### T-tests for each lot

<img alt="t-test by lot" title="t-test by lot" src="https://github.com/brown-rox20/MechaCar_Statistical_Analysis/blob/main/static/images/deliverable_3_by_lot.png">

Lot 1 and Lot 2 have very similar means of `1500` and `1500.2`, and a `p-value` of `1` and `0.61` respectively. We can safely conclude that we fail to reject the null hypothesis in these cases.

However, Lot 3 has a mean of `1496.14` and a `p-value` of `0.04`, which is lower than the `0.05` level of signifigance and therefore we can reject the null hypothesis.

## Study Design: MechaCar vs Competition

- To quantify how the MechaCar performs against the competition, we can look at metrics such as cost, fuel efficiency, horse power, maintenance cost, and safety rating.

- The null hypothesis is that MechaCar's metrics are no different from its competitors, using a `0.05` level of signifigance.

- The statistical test we would perform is to find the means for each metric and run a `t-test` on them to see if there is any significant difference between MechaCar and its competitors. If the `p-value` is above `0.05`, then we can reject the null hypothesis.

- The data we need to run the statistical test would include the following:
  - MSRP cost
  - Fuel Economy information
  - Horsepower rating
  - Average maintenance costs
  - Safety ratings
