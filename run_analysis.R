dataset.dir <- "UCI HAR Dataset"

activity.labels <- read.table(paste(dataset.dir, '/activity_labels.txt', sep = ''))
features <- read.table(paste(dataset.dir, '/features.txt', sep = ''))  

train.x <- read.table(paste(dataset.dir, '/train/X_train.txt', sep = '')) 
train.y <- read.table(paste(dataset.dir, '/train/y_train.txt', sep = ''))
train.subject <- read.table(paste(dataset.dir, '/train/subject_train.txt', sep = '')) 

test.x <- read.table(paste(dataset.dir, '/test/X_test.txt', sep = '')) 
test.y <- read.table(paste(dataset.dir, '/test/y_test.txt', sep = ''))
test.subject <- read.table(paste(dataset.dir, '/test/subject_test.txt', sep = '')) 

x <- rbind(train.x, test.x)
y <- rbind(train.y, test.y)
subject <- rbind(train.subject, test.subject)

x.with.descriprive.names <- x
colnames(x.with.descriprive.names) <- features$V2 
x.with.descriprive.names$subject <- subject$V1
x.with.descriprive.names$label <- factor(y$V1, labels=activity.labels$V2)

required.columns.indexes <- c(grep('std', features$V2), grep('mean', features$V2))

x.with.required.columns <- x.with.descriprive.names[, required.columns.indexes]

write.table(x.with.descriprive.names, 'mean-and-std-features.txt')

agregated.data = aggregate(x.with.descriprive.names[,1:dim(x)[2]], list(x.with.descriprive.names$subject, x.with.descriprive.names$label), mean)
write.table(agregated.data, 'agregated-data.txt')
