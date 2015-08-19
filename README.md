# Kaggle | Digit Recognizer


## Overview

This repository contains the code to classify hand written digits for the Kaggle [Digit Recognizer](https://www.kaggle.com/c/digit-recognizer) competition. The goal in this competition is to take an image of a handwritten single digit, and determine what that digit is.


## Source Code Layout

The code is adapted from the project assignment that I completed for Coursera's [Machine Learning](https://www.coursera.org/learn/machine-learning) course.

	data		contains the raw and converted data files
	

## Getting Data

The data for this competition were taken from the MNIST dataset. The MNIST ("Modified National Institute of Standards and Technology") dataset is a classic within the Machine Learning community that has been extensively studied.  More detail about the dataset, including Machine Learning algorithms that have been tried on it and their levels of success, can be found at http://yann.lecun.com/exdb/mnist/index.html.

The raw data files are downloaded from the Kaggle [project website](https://www.kaggle.com/c/digit-recognizer/data) and contain gray-scale images of hand-drawn digits, from zero through nine.

It contains the following files:
	train.csv		
	test.csv


## Prepare Data

For performance reasons the .csv files are converted to .mat files first using the 'convert.m' script. It converts the data as follows:

- Read the data from the csv file
- Remove the header row
- For train.csv, store the labels as variable y and the pixel data as variable X. For test.csv store the pixel data as X.
- Save the data as matlab file


## Training


## Predicting


## Result

