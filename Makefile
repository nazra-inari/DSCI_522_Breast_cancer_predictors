# Arzan Irani, Milos Milic

# This make file is used to execute our analysis of breast cancer data
# The analysis is used to understand the best predictors of breast cancer
# from within the data set, and then creating a decision tree classifier
# to help classify future breast cancer data

all : breast_cancer_malignancy_tree imgs/breast_cancer_malignancy_tree.pdf imgs/max_depth_graph.png imgs/min_sample_split_graph.png

data/clean_breast_cancer_data.csv : data/breast_cancer_data.csv src/01_read_data.py
	python src/01_read_data.py data/breast_cancer_data.csv data/clean_breast_cancer_data.csv

imgs/feature_histograms.png imgs/box_plots.png data/clean_breast_cancer_data_after_dropped_features.csv : data/clean_breast_cancer_data.csv src/02_eda_on_breast_cancer_data.py
	python src/02_eda_on_breast_cancer_data.py data/clean_breast_cancer_data.csv imgs/feature_histograms.png imgs/box_plots.png data/clean_breast_cancer_data_after_dropped_features.csv

imgs/max_depth_graph.png imgs/min_sample_split_graph.png : data/clean_breast_cancer_data_after_dropped_features.csv src/03_hyperparmeter_optimization.py
	python src/03_hyperparmeter_optimization.py data/clean_breast_cancer_data_after_dropped_features.csv imgs/max_depth_graph.png imgs/min_sample_split_graph.png

imgs/breast_cancer_malignancy_tree imgs/breast_cancer_malignancy_tree.pdf : data/clean_breast_cancer_data_after_dropped_features.csv src/04_final_breast_cancer_malignancy_decision_tree_classifier.py
	python src/04_final_breast_cancer_malignancy_decision_tree_classifier.py data/clean_breast_cancer_data_after_dropped_features.csv imgs/breast_cancer_malignancy_tree imgs/breast_cancer_malignancy_tree.pdf

clean :
	rm -f data/clean_breast_cancer_data.csv
	rm -f imgs/feature_histograms.png
	rm -f imgs/box_plots.png
	rm -f data/clean_breast_cancer_data_after_dropped_features.csv
	rm -f imgs/max_depth_graph.png
	rm -f imgs/min_sample_split_graph.png
	rm -f imgs/breast_cancer_malignancy_tree.pdf
	rm -f imgs/breast_cancer_malignancy_tree
