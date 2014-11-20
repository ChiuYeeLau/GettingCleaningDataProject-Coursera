# Start the clock!
Start_Time = proc.time()

message ("0. Start the project of Getting and Cleaning Data ~")

# Part 1: Set working directory and download file
message ("1. Set working directory and download file ~")

Project_Path = getwd()
Url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
File_Name = "Project_Data_set.zip"
File_Path = paste (Project_Path, File_Name, sep = "/")

if (!file.exists(Project_Path))
{
        dir.create(Project_Path)
}

if (!file.exists(File_Path))
{
        download.file (Url, File_Path)
}

# Part 2: Unzip downloaded file
message ("2. Unzip downloaded file ~")

unzip (zipfile = File_Path)

# Part 3: Set path of unzipped data set
message ("3. Set path of unzipped data set ~")

Data_Set_Path =  paste (Project_Path, "UCI HAR Dataset", sep = "/")

# Part 4: Read data files
message ("4. Read data files ~")

require ("data.table")

Feature = read.table (file = paste (Data_Set_Path, "features.txt", sep = "/"))

Subject_Train = read.table (file = paste (Data_Set_Path, "/train/", "subject_train.txt", sep = ""))
Subject_Test = read.table (file = paste (Data_Set_Path, "/test/", "subject_test.txt", sep = ""))

x_Train = read.table (file = paste (Data_Set_Path, "/train/", "X_train.txt", sep = ""))
y_Train = read.table (file = paste (Data_Set_Path, "/train/", "y_train.txt", sep = ""))

x_Test = read.table (file = paste (Data_Set_Path, "/test/", "X_test.txt", sep = ""))
y_Test = read.table (file = paste (Data_Set_Path, "/test/", "y_test.txt", sep = ""))

# Part 5: Set names for data frames
message ("5. Set names for data frames ~")

names (Subject_Train) = "SubjectID"
names (Subject_Test) = "SubjectID"

names (x_Train) = Feature [, 2]
names (y_Train) = "ActivityLabel"
names (x_Test) = Feature [, 2]
names (y_Test) = "ActivityLabel"

# Part 6: Merge two data sets by rows to create one data set
message ("6. Merge two data sets by rows to create one data set ~")

x_Complete_Set = rbind(x_Train, x_Test)
y_Complete_Set = rbind(y_Train, y_Test)
Subject_Complete_Set = rbind(Subject_Train, Subject_Test)

Complete_Data_Set = cbind (Subject_Complete_Set, y_Complete_Set, x_Complete_Set)

# Part 7: Extract only the measurements on the mean and standard deviation for each measurement
message ("7. Extract only the measurements on the mean and standard deviation for each measurement ~")

Data_Set = Complete_Data_Set [, grepl("SubjectID|ActivityLabel|mean|std", names (Complete_Data_Set))]

# Part 8: Uses descriptive activity names to name the activities in the data set
message ("8. Use descriptive activity names to name the activities in the data set ~")

Activity_Label_Set = read.table (file = paste (Data_Set_Path, "activity_labels.txt", sep = "/"))
names (Activity_Label_Set) = c("ActivityLabel", "ActivityName")

Data_Set = merge (x = Activity_Label_Set, y = Data_Set, by.x = "ActivityLabel", by.y = "ActivityLabel")
Data_Set_Name = names (Data_Set)
Data_Set_Name [c(1:3)] = c("SubjectID", "ActivityLabel", "ActivityName")
Data_Set = Data_Set [Data_Set_Name]

Data_Set = Data_Set [with(Data_Set, order (SubjectID, ActivityLabel)), ]

# Part 9: Label the data set with descriptive variable names appropriately
message ("9. Label the data set with descriptive variable names appropriately ~")

names(Data_Set) <- gsub("[-]", "", names(Data_Set))
names(Data_Set) <- gsub("[()]", "", names(Data_Set))

# Part 10: Create a second, independent tidy data set with the average of each variable for each activity and each subject
message ("10. Create a second, independent tidy data set with the average of each variable for each activity and each subject ~")

Data_Set = subset(Data_Set, select = - ActivityLabel)

require (reshape2)
Melt_Data_Set = melt(Data_Set, c("SubjectID", "ActivityName"))
names (Melt_Data_Set)[c(3, 4)] = c("Feature", "FeatureValue") 

library (plyr)
Melt_Mean_Data_Set = ddply(Melt_Data_Set, names (Melt_Data_Set)[c(1 : 3)], summarise, mean(FeatureValue))
names (Melt_Mean_Data_Set) [4] = "MeanValue"

# Part 11: Save tidy data file2
message ("11. Save the tidy and complete data files ~")

write.table(Data_Set, paste(Project_Path,"Tidy_Unmelted_Data.txt",sep="/"), row.names=FALSE)
write.table(Melt_Data_Set, paste(Project_Path,"Tidy_Melted_Data.txt",sep="/"), row.names=FALSE)
write.table(Melt_Mean_Data_Set, paste(Project_Path,"Tidy_Melted_Mean_Data.txt",sep="/"), row.names=FALSE)

# Part 12: The project is done
message ("12. The project of Getting and Cleaning Data is done ~")

# Stop the clock
Stop_Time = proc.time() 
Running_Time = Stop_Time - Start_Time
print (Running_Time)
