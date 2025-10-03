% Calculate readmission rates by age group
[age_groups, ~, group_id] = unique(data_clean.Age);
total_patients_per_group = splitapply(@numel, data_clean.Readmitted, group_id);
readmitted_patients_per_group = splitapply(@(x) sum(x == "Yes"), data_clean.Readmitted, group_id);
readmission_rate = (readmitted_patients_per_group ./ total_patients_per_group) * 100;

% Display results in Command Window
fprintf('\n--- Readmission Rates by Age ---\n');
for i = 1:length(age_groups)
    fprintf('Age Group: %s, Rate: %.2f%%\n', age_groups{i}, readmission_rate(i));
end