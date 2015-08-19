# Kaggle | Digit Recognizer


## Overview

This repository contains the code to classify hand written digits for the Kaggle [Digit Recognizer](https://www.kaggle.com/c/digit-recognizer) competition. The goal in this competition is to take an image of a handwritten single digit, and determine what that digit is.


## Source Code Layout

The code is adapted from the project assignment that I completed for Coursera's [Machine Learning](https://www.coursera.org/learn/machine-learning) course.

	displayData.m		 	Displays 2D data stored in X
	fmincg.m				Minimizes a continuous differentialble multivariate function (by Carl Edward Rasmussen)
	loadData.m				Loads data from the specified file
	lrCostFunction.m		Computes cost and gradient for logistic regression with regularization
	oneVsAll.m				Trains multiple logistic regression classifiers
	predict.m				Predicts the label of an input given a trained neural network
	predictOneVsAll.m		Predicts the label for a trained one-vs-all classifier
	README.md				This project description
	sigmoid.m				Computes the sigmoid function
	test.m					Predicts the label of the contents of an input file.
	train.m					Trains the classifier based on an input file with known labels.
	

## Getting Data

The data for this competition were taken from the MNIST dataset. The MNIST ("Modified National Institute of Standards and Technology") dataset is a classic within the Machine Learning community that has been extensively studied.  More detail about the dataset, including Machine Learning algorithms that have been tried on it and their levels of success, can be found at http://yann.lecun.com/exdb/mnist/index.html.

The raw data files are downloaded from the Kaggle [project website](https://www.kaggle.com/c/digit-recognizer/data) and contain gray-scale images of hand-drawn digits, from zero through nine.

It contains the following files:

	train.csv	the training data set with 42000 images, including a label in the first column with the digit that was drawn.		
	test.csv	the test data set with 28000 images


## Processing

### Prepare Data

The file `loadData.m` loads the data as follows:

- Read the data from the csv file
- Remove the header row
- For training data, store the labels as variable y
- Return pixel data as X, labels as y (for training data only)


### Training

The file `train.m` trains the classifier as follows:

- Load the training data using `loadData.m`
- Randomly select a specified number of samples
- Display the first 100 images
- Train the classifier with `oneVsAll.m`
- Predict the training data to determine its accuracy

Training with 100 randomly selected samples yields a training accuracy of 91%.


### Predicting

The file `test.m` predicts the labels using the trained classifier as follows:

- Load the test data using `loadData.m`
- Predict the labels for the test data 
- Write results


## Results

The initial [submission](https://www.kaggle.com/hjanssen/results) yielded a result of 0.60786. 

Improvements that I am planning to make:

- double check the inner workings of the scripts to make sure everything works OK.
- increase the number of training samples (but I need to make Octave stop from crashing first...)
- try different learning parameters

