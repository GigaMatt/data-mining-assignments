% Clustering homework assignment
data = dlmread('Data.txt');
labels = dlmread('expectedclusters.txt');

[idx, c, ssd] = kmeans(data,5);
rand_index = RandIndex(idx,labels);

ssd_sum = sum(ssd);

z = linkage(data);
dendrogram(z)
