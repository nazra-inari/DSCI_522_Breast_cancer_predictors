#Docker file for Breast cancer analysis
FROM rocker/tidyverse


MAINTAINER milos milic <milos.milic@alum.utoronto.ca>
#Arzan Irani



# then install the cowsay package
RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  && install2.r --error \
    --deps TRUE \
    cowsay

# Install make file
RUN apt-get update && apt-get install make



# install python 3
RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

# get python package dependencies
RUN apt-get install -y python3-tk

# install numpy, pandas, matplotlib, argparse, pandas, seaborn, sklearn, graphviz
RUN pip3 install numpy
RUN pip3 install argparse
RUN pip3 install pandas
RUN pip3 install seaborn
# RUN pip3 install random
RUN pip3 install sklearn
RUN pip --install-option="--prefix=$./" install graphviz
#RUN brew install graphviz

# DecisionTreeClassifier, export_graphviz, CountVectorizer, train_test_split, CountVectorizer


RUN apt-get update && \
    pip3 install matplotlib && \
    rm -rf /var/lib/apt/lists/*
