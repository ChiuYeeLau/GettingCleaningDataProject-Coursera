# Course Project - Getting and Cleaning Data

## Name

Xiaoyi (Leo) Liu

## Project Description

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

 You should create one R script called run_analysis.R that does the following. 
 1. Merges the training and the test sets to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
 3. Uses descriptive activity names to name the activities in the data set
 4. Appropriately labels the data set with descriptive variable names. 
 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 6. 

## R Script

run_analysis.R

## R Script Walkthrough

0. Start the project of Getting and Cleaning Data ~

1. Set working directory and download file ~

2. Unzip downloaded file ~

3. Set path of unzipped data set ~

4. Read data files ~

5. Set names for data frames ~

6. Merge two data sets by rows to create one data set ~

7. Extract only the measurements on the mean and standard deviation for each measurement ~

8. Use descriptive activity names to name the activities in the data set ~

9. Label the data set with descriptive variable names appropriately ~

10. Create a second, independent tidy data set with the average of each variable for each activity and each subject ~

11. Save the tidy and complete data files ~

12. The project of Getting and Cleaning Data is done ~


## R Version

platform       x86_64-w64-mingw32

arch           x86_64

os             mingw32

system         x86_64, mingw32

status

major          3

minor          1.1

year           2014

month          07

day            10

svn rev        66115

language       R

version.string R version 3.1.1 (2014-07-10)

nickname       Sock it to Me
