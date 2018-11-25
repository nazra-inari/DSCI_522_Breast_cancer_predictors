# DSCI_522_Breast_cancer_predictors
Decision tree analysis of breast cancer result metrics to deduce the strongest predictor of malignancy
By: Arzan Irani and Milos Milic


## Introduction
We wanted to find an interesting data set where we can apply some of the newest methods we have learned in DSCI 571. As we want to see if we can apply a decision tree classifier to a data source in order to build a decision tree. We may also repeat the process of using only a portion of the data set for the training data and once we have our deciders to apply it to our test data set.

## Data Source

The data source we used was the the Wiscoincon Breast Cancer result data. The link to the data source is here. The set is a collection of 393 benign and 212 malignant fine needle aspirate samples of a breast mass. Each digitised sample has 30 features associated with it.
https://www.kaggle.com/uciml/breast-cancer-wisconsin-data/home

## Objective/Question

We are trying to explore/analyse a predictive question, that is given a set of readings from a test, can our model predict whether the Cancer is malignant or not.
Time and resources permitting, we would also like to answer other questions like what are the strongest predictors of malignant cancer?

## Process to Analyse

The data will imported from a csv into Python using Pandas. Following this, a decision tree classifier will be modeled and trained with SciKit Learn (a python package). This model will be trained on 75% of the data and tested for accuracy on the remaining 25% of the data. A reported accuracy score for the model will help a user understand the strength of this classifier.

## Type of Analysis

The type of analysis we will be running is a decision tree and we want to find what are the top 5 deciders in regard to the Breast cancer sample being benign or malignant.

## How to report results

We will plot a decision tree and see if we can show the 5 factors from our analysis as well as the stump. We will also show a list of the strongest predictors of malignancy for breast cancer

## Usage
Run each script in this order to execute analysis and and then look in the results folder to see the report.
```
python 01_read_data.py

python 02_eda_on_breast_cancer_data.py

python 03_hyperparmeter_optimization.py

python 04_final_breast_cancer_malignancy_decision_tree_classifier.py
```

## FInal Report 
You can navigate to the results folder and see the final report in a file called final_report.ipynb
