## Ideal Vs Good Diamond (Random Forest Model)
 

In this repository, I have run a Random Forest Model(using 10-fold cross validation) using Caret library on the diamond dataset available within the Caret library.

## Goal 

Predict based on the various properties of a diamond, whether it is an ideal diamond, with an ideal cut or simply a good diamond.

## About the Data

The diamond dataset is a dataset containing prices and other attributes of 53940 diamonds. 
Dimensions :  53940 rows, 10 columns

1. **Price** : Price of the diamond (in USD)
2. **Carat** : Weight of the diamond
3. **Cut** : Quality of the diamond (Fair, Good, Very Good, Premium, Ideal)
4. **Color** : Diamond color (D = best, J = worst)
5. **Clarity** : Measurement of how clear the diamond is(I1 = worst, IF = best)
6. **x** : Length (mm)
7. **y** : Width (mm)
8. **z** : Depth (mm)
9. **Depth** : Total Percentage Depth = z/mean(x,y)
10. **Table** : Width of top of diamond relative to widest point

## Model
I have run, using Caret Package, a Random Forest model with the following accuracies:

1) **Training Accuracy** : 0.9837482
2) **Validation Accuracy** : 0.9822

## Tuned Hyperparameter Values:
1) Minimum Node Size = 1
2) Mtry = 11
3) Splitrule = Gini

## Model Results
![Winning Team](https://github.com/Aishwarya4823/Ideal-Vs-Good-Diamond--Random-Forest-Model-/blob/master/Images/Model_Result.PNG)

## Validation Results
![Winning Team](https://github.com/Aishwarya4823/Ideal-Vs-Good-Diamond--Random-Forest-Model-/blob/master/Images/Validation_Result.PNG)
