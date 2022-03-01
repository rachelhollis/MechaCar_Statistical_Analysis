# MechaCar_Statistical_Analysis

Perform a statistical analysis of automobile performance using R

## Linear Regression to Predict MPG

![images/call1.png](images/call1.png)
![images/call2-values.png](images/call2-values.png)

- Vehicle Length and Ground Clearance show a non-random amount of variance on the MPG of the MechaCar
- The slope of the linear model is not considered to be zero. The p-value of the linear model is lower than an extrememe level of significance. This provides sufficient statistical evidence that the null hypotheses is not true. The relationship between our variables and miles per gallon is subject to more than random chance.
- The r-squared value is .7149 indicating that there is a 71.48% chance that any future data points will fit this model. The linear model does predict the MechaCar prototypes effectively. There is most likely still unconsidered factors but the model is relatively effective. 


## Summary Statistics on Suspension Coils

#### Total Summary
![images/total_summary.png](images/total_summary.png)

#### Lot Summary
![images/lot_summary.png](images/lot_summary.png)

- The specs for the MechaCoil suspension coils dictate that the variance of the suspension coils must not exceed 100 psi. Based on the Total Summary, the overall variance is below 100 psi and therefore meets the specifications. However, the lot summary stats shows that the variance for Lot 3 is well over the acceptable threshold (170.29)
