% Get a summary of the dataset
summary(data)

% Check for missing values in key columns (e.g., 'Readmitted')
missing_readmitted = sum(ismissing(data.Readmitted));
fprintf('Number of missing values in Readmitted column: %d\n', missing_readmitted);

% Remove rows with missing critical data
data_clean = rmmissing(data, 'DataVariables', {'Readmitted', 'Age', 'Diagnosis'});