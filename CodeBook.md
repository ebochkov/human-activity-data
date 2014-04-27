All work, required in the assignment is done in run_analysis.R script.

According to the project description it's assumed that directory with original data is located in the same directory and is named 'UCI HAR Dataset'. Otherwise, 'dataset.dir' variable in the script should be changed.

As it stated in the project description, script merges the training and the test sets to create one data set, appropriately labels the data set with descriptive feature names and uses descriptive activity names to name the activities in the data set.

Then it extracts only the measurements on the mean and standard deviation for each measurement and writes it to the 'mean-and-std-features.txt'.

Then it creates independent tidy data set with the average of each variable for each activity and each subject and writes it to the 'agregated-data.txt'.
 
All the variables, available in the R environment after the script execution are described below:

dataset.dir - original dataset directory;
activity.labels - dataframe with activity labels;
features - dataframe with features;  
train.x - training measuarments dataframe; 
train.y - training activity dataframe;
train.subject - training subjects fataframe;
test.x - test measuarments dataframe; 
test.y - test activity dataframe;
test.subject - test subjects dataframe;
x - merged measurment dataframe;
y - merged activity dataframe;
subject <- merged subject dataframe;
x.with.descriprive.names - dataframe with descriptive column names, activity values and subjects;
required.columns.indexes - indexes of the columns required in step 2 of the task;
x.with.required.columns - dataframe with the columns required in step 2 of the task;
agregated.data - dataframe with the data required in the step 5 of the task;