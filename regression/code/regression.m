train_data = dlmread("TrainData.txt");
train_labels = dlmread("TrainLabels.txt");

test_data = dlmread("TestData.txt");
test_labels = dlmread("TestLabels.txt"); % Ground truth data

coefficient_e = glmfit(train_data,train_labels, );