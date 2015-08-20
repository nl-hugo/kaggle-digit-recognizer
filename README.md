# Kaggle | Digit Recognizer


## Overview

This repository contains the code to classify hand written digits for the Kaggle [Digit Recognizer](https://www.kaggle.com/c/digit-recognizer) competition. The goal in this competition is to take an image of a handwritten single digit, and determine what that digit is.

The code is written in Octave and implements a neural network classifier.

![digit recognition](/media/screenshot.png "Digit Recognition")


## Data

The data for this competition were taken from the MNIST dataset. The MNIST ("Modified National Institute of Standards and Technology") dataset is a classic within the Machine Learning community that has been extensively studied.  More detail about the dataset, including Machine Learning algorithms that have been tried on it and their levels of success, can be found at http://yann.lecun.com/exdb/mnist/index.html.


## Source Code Layout

The code is adapted from the project assignment that I completed for Coursera's [Machine Learning](https://www.coursera.org/learn/machine-learning) course.

	displayData.m		 	Displays 2D data stored in X (by course staff)
	fmincg.m				Minimizes a continuous differentialble multivariate function (by 
							Carl Edward Rasmussen)
	loadData.m				Loads data from the specified file
	lrCostFunction.m		Computes cost and gradient for logistic regression with 
							regularization
	oneVsAll.m				Trains multiple logistic regression classifiers
	predict.m				Predicts the label of an input given a trained neural network
	predictOneVsAll.m		Predicts the label for a trained one-vs-all classifier
	README.md				This project description
	sigmoid.m				Computes the sigmoid function
	test.m					Predicts the label of the contents of an input file.
	train.m					Trains the classifier based on an input file with known labels.
	

## Getting Data

The raw data files are downloaded from the Kaggle [project website](https://www.kaggle.com/c/digit-recognizer/data) and contain gray-scale images of hand-drawn digits, from zero through nine. It contains the following files:

	train.csv	the training data set with 42000 images, including a label in the first column 
				with the digit that was drawn.		
	test.csv	the test data set with 28000 images


## Processing

### Prepare Data

The file `loadData.m` loads the data as follows:

- Read the data from the csv file
- Remove the header row
- For training data, store the labels as variable y
- Rotate the data set so that the digits are displayed upright
- Return pixel data as X, labels as y (for training data only)

Note that this function is called from the `train.m` and `test.m` scripts.


### Train

The file `train.m` trains the classifier as follows:

- Load the training data using `loadData.m`
- Randomly select a specified number of samples
- Display the first 100 images
- Train the classifier with `oneVsAll.m`
- Predict the training data to determine its accuracy

Training with a various number of randomly selected samples yields the following accuracy:

| Sample size | Accuracy |
|-------------|----------|
| 100         | 91%      |
| 5000        | 87%      |
| 10000       | 84%      |


### Predict

The file `test.m` predicts the labels using the trained classifier as follows:

- Load the test data using `loadData.m`
- Predict the labels for the test data 
- Write results


## Results

See my results at the [submission](https://www.kaggle.com/hjanssen/results) page.

1. The initial version with 100 train samples yielded a result of 0.60786 
2. After increasing the number of training set samples to 5000: 0.79214
3. After increasing the number of training set samples to 10000: 0.80800

Improvements that I am planning to make:

- double check the inner workings of the scripts to make sure everything works OK.
- increase the number of training samples (but I need to make Octave stop from crashing first...)
- try different learning parameters

