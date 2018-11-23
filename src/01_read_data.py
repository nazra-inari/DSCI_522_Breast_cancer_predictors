import pandas as pd

def main():
    breast_cancer_data = pd.read_csv("./data/breast_cancer_data.csv")
    print(breast_cancer_data)

main()
