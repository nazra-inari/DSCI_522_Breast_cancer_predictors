# DSCI_522_Breast_cancer_predictors
Decision tree analysis of breast cancer result metrics to deduce the strongest predictor of Breast Cancer malignancy
By: Arzan Irani and Milos Milic


The report can be found below: https://github.com/UBC-MDS/DSCI_522_Breast_cancer_predictors/blob/master/results/final_report.ipynb

## Files Inputs, outputs and dependencies

- 01_read_data.py  Input:  breast_cancer_data.csv Output: clean_breast_cancer_data.csv

- 02_eda_on_breast_cancer_data.py Input: clean_breast_cancer_data.csv Output: clean_breast_cancer_data_after_dropped_features.csv /imgs/feature_histograms.png /imgs/box_plots.png

- 03_hyperparmeter_optimization.py

Input: clean_breast_cancer_data_after_dropped_features.csv  Output: /imgs/max_depth_graph.png, /imgs/min_sample_split_graph.png

- 04_final_breast_cancer_malignancy_decision_tree_classifier.py Input: clean_breast_cancer_data_after_dropped_features.csv Output: breast_cancer_malignancy_tree.pdf breast_cancer_malignancy_tree.file

-- Dependencies : make, argparse, pandas, numpy, seaborn, matplotlib, random, from sslearn: DecisionTreeClassifier, export_graphviz, CountVectorizer, train_test_split, CountVectorizer


You would also need to have docker installed on your machine. The link for Docker is found below.

https://www.docker.com/



## Introduction
This is an analysis of the Wisconsin breast cancer data set. The set contains numerical results of breast cancer cell samples where a computerised analysis of the cells quantified the results into 10 different physical features. Now, each sample was known if it came from a patient with a benign or malignant tumor.

What we wanted to know is, if physical features of the cells themselves can reveal malignancy? If an expert can deduce this through a microscope analysis, can we apply machine learning to see if we can reach the same conclusions.

What we wanted to see is if we could apply machine learning to this data set in order to see whether we can predict if a sample is benign or malignant while looking at these cellular features. Can we apply a decision tree classifier to build a decision tree with a high prediction rate?


More information about the data set and the features can be found on this article below

W.N. Street, W.H. Wolberg and O.L. Mangasarian. Nuclear feature extraction for breast tumor diagnosis. IS&T/SPIE 1993 International Symposium on Electronic Imaging: Science and Technology, volume 1905, pages 861-870, San Jose, CA, 1993.



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

For each of the 10 features, the mean, Standard Error and worst(outlier mean) was calculated.


## Objective/Question

We are trying to explore/analyse a predictive question, that is given a set of readings from a test, can our model predict whether the Cancer is malignant or not.
Time and resources permitting, we would also like to answer other questions such as what are the strongest predictors of malignant cancer?

## Process to Analyse

The data will imported from a csv into Python using Pandas. Following this, a decision tree classifier will be modeled and trained with SciKit Learn (a python package). This model will be trained on 75% of the data and tested for accuracy on the remaining 25% of the data. A reported accuracy score for the model will help a user understand the strength of this classifier.

We chose to focus on the 10 mean features as the Standard Error is related to the mean and the worst values ignore a large number of cells present in the sample which introduces a bias to the data.

## Type of Analysis

The type of analysis we will be running is a decision tree and we want to perhaps see what are the top 5 deciders in regard to the Breast cancer sample being benign or malignant.

## How to report results

We will plot a decision tree and see if we can show the 5 factors from our analysis as well as the stump. We will also show a list of the strongest predictors of malignancy for breast cancer

## Usage with Docker

1. Clone the repo in the link below
https://github.com/UBC-MDS/DSCI_522_Breast_cancer_predictors.git

2. Clone the repo to your computer using this command

```
git clone https://github.com/UBC-MDS/DSCI_522_Breast_cancer_predictors.git
```

3. Run the following commands in the bash window to run the script

```
docker build --tag breast_cancer:1 .
```

then(for windows)

```
winpty docker run --rm -it -e -v "/path/to/project":"/project-dir/" breast_cancer:1 //bin/bash
```
or for OSX or Linux

```
docker run --rm -it -e -v "/path/to/project":"/project-dir/" breast_cancer:1 /bin/bash
```
4.Once in you are in your project folder in the container run the following command to run the report

```
make all
```
5.To clean the report images and output run the following commands

```
make clean
```


## Final Report
You can navigate to the doc folder and see the final report in a file called final_report.ipynb
