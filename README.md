# MechaCar_Statistical_Analysis

## Overview

Using R and RScript, statistical analysis was performed on AutosRUs production datasets. Issues have plagued the production of a new prototype, MechaCar and are impeding the progress of manufacturing the vehicle. From the analysis, it appears that most of the production issues may originate in Lot 3, where statistical measures appear slightly off from the entire population metrics. 

## Linear Regression to Predict MPG

![Linear_regression_mpg](https://user-images.githubusercontent.com/101822948/181118136-aca3ffe5-c493-4d34-85be-c246b13f9709.png)

According to the calculated results using the lm() function in RScript, the variables that most impacted mpg in the prototype vehicles is the vehicle length and the ground clearance. Vehicle length had a probability value of 2.60e-12 and ground clearance had a probability value of 5.21e-08. Since the values of both of these metrics is smaller than alpha (alpha =.05), it indicates that they are statistically unlikely to provide random amounts of variance to the linear model (in other words both of these independent variables have a greater impact on mpg). Based on the above image, vehicle weight, spoiler angle, and AWD were all statistically insignificant and indicate a random amount of variance.

The slope of the multi linear regression model is not 0 and the null hypothesis can be rejected. We determined that the slope was not zero by looking at the p-value, which is 5.35e-11. Since the p-value is well below the significance level of .05, the null hypothesis (that m = 0) can be rejected. If it’s rejected than the alternate hypothesis is true, that m does not equal zero. 

![summary_linear_regression](https://user-images.githubusercontent.com/101822948/181118252-6e29522c-041f-454f-9bf8-bfb183419b82.png)


The linear model does predict mpg for MechaCar prototypes. With an r^2 value of .7149, there is nearly a 72% chance that the variability of mpg (the dependent variable) is explained by the linear model. Of the independent variables calculated by the lm() function in RScript, it is likely that some have little impact on mpg and can be omitted in order to improve the r^2 value.

## Summary Statistics on Suspension Coils
The first image shows a statistical summary of suspension coils for the entire population of the dataset. Since the mean and median are nearly identical it indicates a normal distribution.

![total_summary](https://user-images.githubusercontent.com/101822948/181118597-dda76946-6a2f-4e6f-a15d-ba1a35182849.png)


In this image, vehicles were sorted by their manufacturing lot. The means and medians of each lot were nearly the same indicating a normal distribution. Lots 1 and 2 appeared more similar to one another with both their medians reported at 1500 PSI and the means at or just over that level at 1500 and 1500.2 respectively. Lot 3 also indicates a normal distribution, however its values do not line up as neatly as with the other lots with a mean of 1496.14 and a median of 1498.5. As a result, the variance for Lot 3 is 170.29, magnitudes higher than either Lot 1 or Lot 2. 

![lot_summary](https://user-images.githubusercontent.com/101822948/181118631-e7bdc2f2-3554-46e5-aaca-4e189d5955da.png)

Since MechaCar design specifications require that that the variance of suspension coils not exceed 100 PSI, Lot 3 vehicles fail to meet that requirement. The overall variance for all 3 lots is just over 62 PSI and the prime factor behind that is Lot 3, which has a variance of 170.3 compared with the variances of Lots 1 (.98) and Lot 2 (7.47). So while the population overall has a variance that meets the specification, Lot 3 vehicles do not and should be further examined to see what is causing the more extreme variance. 

## T-Tests on Suspension Coils

![T_test_with_population_and_sample](https://user-images.githubusercontent.com/101822948/181118340-7f8334c6-5e3e-4d31-99f7-a9b8ea481a7e.png)

A T-Test on the entire population and a sample (75) of the population indicated p-values of .06 and .36 respectively. Because both of these are higher than the significance level (alpha = .05) there is not sufficient evidence to reject the null hypothesis, which is that there is no statistical difference between the means of the sample and a hypothetical population dataset. The means shown in the T-Test for both the entire population and the sample are similar to the expected mean of 1500 PSI.

![T_Tests_Lots_1_2](https://user-images.githubusercontent.com/101822948/181118370-f508b008-6c4c-43a4-b126-39348d8d8c47.png)

The T-Tests done on Lots 1 and 2 showed similar findings. The Lot 1 p-value = 1 and the Lot 2 p-value = .60. The mean for Lot 1 was calculated at 1500 PSI and Lot 2 was calculated at 1500.2. Both of these T-Tests indicate there is no statistical difference between  the means of the sample and the expected 1500 PSI mean of the entire population.

![T_Test_Lot_3](https://user-images.githubusercontent.com/101822948/181118395-2c52e66a-56da-45e9-86b4-8f9b71421190.png)

Lot 3, however, remains an outlier. With a p-value = .04168, there is a slight statistical difference between the observed sample means and the expected population mean. The Lot 3 mean was calculated at 1496.14 PSI. 

## Study Design: MechaCar vs Competition
Metrics:
To compare MechaCar with competitors, it’s important to figure out which metrics would be of the most importance to current buyers. Given current energy prices, vehicle cost and fuel efficiency is likely a key concern of potential buyers. In previous analysis on vehicle data, there are several factors that impact fuel efficiency and those should be retested with MechaCar vehicles. Both average highway and city fuel efficiencies should be analyzed with independent variables that could include: vehicle weight, engine type (gasoline, diesel, electric, hybrid), horsepower, tire size.

In addition, factors that impact cost could be another test. In that instant the current selling price would be the dependent variable and independent variables could include: fuel efficiency (both city and highway), resale value, average maintenance costs, engine type, lifespan of the vehicle.

Hypotheses:

For fuel efficiency
Null Hypothesis – the mean fuel efficiency is statistically the same as competitors’ vehicles (p-values are below alpha, the significance levels) 
Alternate Hypothesis – the mean fuel efficiency is statistically difference from competitor’s vehicles  

For cost:
Null Hypothesis – MechaCar is priced appropriately based on how its metrics compare with competitors
Alternate Hypothesis – MechaCar is priced inappropriately based on how its metrics compare with competitors. 

Statistical Tests:
To compare MechaCar to competitors, we would need to perform several primary statistical tests on the data including getting the means of the various metrics (vehicle weights based on styles, horsepower, tire sizes, fuel efficiency (both highyway and city), resale values, maintenance costs, lifespan of vehicles). In addition the standard deviation for each of those metrics would need to be calculated. A regression model including multiple Linear Regressions would be best to determine which metrics impact fuel efficiency and costs. Once key variables have been isolated, single linear regressions could be used to visualize the relationship. Hypothesis testing should be done to determine a p-value and significant level. In addition, a r^2 value should be determined to see if metrics are useful for predictions. Finally a sample size determination should be done to figure out the best number of samples to compare. 

Data needed for statistical tests:
fuel efficiency (city and highway), vehicle weight, engine type, horsepower, tire size, current costs, resale value, average maintenance costs, vehicle lifespan for MechaCar and its competitors. 
Competitor vehicles should be of the same type as MechaCar for head to head  competition. 
