% Figure 1: Bar chart for readmission rates by age
figure;
bar(readmission_rate);
xticklabels(age_groups);
title('Hospital Readmission Rates by Age Group');
xlabel('Age Group');
ylabel('Readmission Rate (%)');
grid on;

% Figure 2: Histogram for length of stay
figure;
histogram(data_clean.Time_in_Hospital); % Replace with actual column name
title('Distribution of Patient Hospital Stay Duration');
xlabel('Days in Hospital');
ylabel('Number of Patients');