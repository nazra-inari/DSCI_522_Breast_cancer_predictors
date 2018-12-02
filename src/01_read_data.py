

#Imported argparse to rin the 01_read_data.py as a command line argument
import argparse
import pandas as pd

def main():
    breast_cancer_data = pd.read_csv("./data/breast_cancer_data.csv")
    # Drop the last column from the database.
    breast_cancer_data = breast_cancer_data.drop(labels = 'Unnamed: 32', axis = 1)
    breast_cancer_data.to_csv("./data/clean_breast_cancer_data.csv",encoding='utf-8', index=False)
main()
