# DSCI_522_Breast_cancer_predictors
Decision tree analysis of breast cancer result metrics to deduce the strongest predictor of Breast Cancer malignancy
By: Arzan Irani and Milos Milic

#How to run the Analysis
open a command prompt/ terminal

Navigate to the root folder and type the following command:

make all

The report can be found below: https://github.com/UBC-MDS/DSCI_522_Breast_cancer_predictors/blob/master/results/final_report.ipynb

## Files Inputs, outputs and dependencies

- 01_read_data.py  Input:  breast_cancer_data.csv Output: clean_breast_cancer_data.csv

- 02_eda_on_breast_cancer_data.py Input: clean_breast_cancer_data.csv Output: clean_breast_cancer_data_after_dropped_features.csv /imgs/feature_histograms.png /imgs/box_plots.png

- 03_hyperparmeter_optimization.py

Input: clean_breast_cancer_data_after_dropped_features.csv  Output: /imgs/max_depth_graph.png, /imgs/min_sample_split_graph.png

- 04_final_breast_cancer_malignancy_decision_tree_classifier.py Input: clean_breast_cancer_data_after_dropped_features.csv Output: breast_cancer_malignancy_tree.pdf breast_cancer_malignancy_tree.file

-- Dependencies : argparse, pandas, numpy, seaborn, matplotlib, random, from sslearn: DecisionTreeClassifier, export_graphviz, CountVectorizer, train_test_split, CountVectorizer






## Introduction
After going on Kaggle, we came by the Wisconsin Breast Cancer data set. The set contains numerical results of breast cancer cell samples where a computerised analysis of the cells quantified the results of the cells into 10 different physical features. The samples have been defined on whether they are malignant or benign. What we wanted to see is if we could apply machine learning to this data set in order to see whether we can predict if a sample is benign or malignant while looking at these cellular features.

More information about the data set and the features can be found on this article below

W.N. Street, W.H. Wolberg and O.L. Mangasarian. Nuclear feature extraction for breast tumor diagnosis. IS&T/SPIE 1993 International Symposium on Electronic Imaging: Science and Technology, volume 1905, pages 861-870, San Jose, CA, 1993.




We wanted to find an interesting data set where we can apply some of the newest methods we have learned in DSCI 571. As we want to see if we can apply a decision tree classifier to a data source in order to build a decision tree. We may also repeat the process of using only a portion of the data set for the training data and once we have our deciders to apply it to our test data set.

## Data Source

The data source we used was the  Wisconsin Breast Cancer result data. The link to the data source is here. The set is a collection of 393 benign and 212 malignant fine needle aspirate samples of a breast mass. Each digitised sample has 30 features associated with it.
https://www.kaggle.com/uciml/breast-cancer-wisconsin-data/home

The features contained in the data set are:

- radius
- texture
- perimeter
- area
- smoothness
- compactness
- concavity
- concave_points
- symmetry
- fractal_dimension

For each of the 10 the mean, Standard Error and worst(outlier mean) was calculated


## Objective/Question

We are trying to explore/analyse a predictive question, that is given a set of readings from a test, can our model predict whether the Cancer is malignant or not.
Time and resources permitting, we would also like to answer other questions like what are the strongest predictors of malignant cancer?

## Process to Analyse

The data will imported from a csv into Python using Pandas. Following this, a decision tree classifier will be modeled and trained with SciKit Learn (a python package). This model will be trained on 75% of the data and tested for accuracy on the remaining 25% of the data. A reported accuracy score for the model will help a user understand the strength of this classifier.

We chose to focus on the 10 mean features as the Standard Error is related to the mean and the worst values ignore a large number of cells present in the sample which introduces a bias to the data.

## Type of Analysis

The type of analysis we will be running is a decision tree and we want to find what are the top 5 deciders in regard to the Breast cancer sample being benign or malignant.

## How to report results

We will plot a decision tree and see if we can show the 5 factors from our analysis as well as the stump. We will also show a list of the strongest predictors of malignancy for breast cancer
