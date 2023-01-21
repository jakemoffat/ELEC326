% ELEC 326
% Group Simulation Activity 1
% Question 2 - Part II
% Emma Chan, Charlotte Lombard, Jack Mason, Jake Moffat

% Prompt: For each RV, write a MATLAB code to count the number of times each number {0,1,2,. . . ,100}
% is observed and save them in vectors H1, H2 and H3. Then divide H1, H2 and H3 by the
% number of trials (1 million) and plot them.

% Load the RVs
RV1 = load('RV1.mat').RV1;
RV2 = load('RV2.mat').RV2;
RV3 = load('RV3.mat').RV3;
RV = 0:100;

% First random variable
% Count the occurences for each value
H1 = zeros(1, 101);
for i = 1:length(RV1)
    H1(RV1(i) + 1) = H1(RV1(i) + 1) + 1;
end
H1 = H1/length(RV1);

% Probability Distribution Plot
plot1 = figure('Name', 'Random Variable');
stem(RV, H1, 'b');
title('Random Variable 1 Probability Distribution', 'FontWeight', 'normal');
set(gca, 'FontSize', 11);
axis1 = gca;
axis1.XLabel.String = 'Random Variable 1';
axis1.XLim = [0, 100];
axis1.YLabel.String = 'f_1(RV1)';

% Mean Estimate
mean1 = sum(RV1)/length(RV1);

% Variance Estimate
variance1 = 0;
for i = 1:length(RV1)
    variance1 = variance1 + (RV1(i) - mean1)^2;
end
variance1 = variance1/length(RV1);

% Normal distribution including the estimated mean and variance
x1 = linspace(0, 100, 10000);
f_x1 = exp(-1.0 * (x1 - mean1) .* (x1 - mean1) / (2.0 * variance1)) / sqrt(2.0 * pi * variance1);

% Normal Distribution Plot
hold on;
plot(x1, f_x1, 'k', 'LineWidth', 3);
legend('Sample Data', 'Normal Distribution', 'Location', 'North East');
hold off;

% Second random variable
% Count the occurences for each value
H2 = zeros(1, 101);
for i = 1:length(RV2)
    H2(RV2(i) + 1) = H2(RV2(i) + 1) + 1;
end
H2 = H2/length(RV2);

% Probability Distribution Plot
plot2 = figure('Name', 'Random Variable');
stem(RV, H2, 'p');
title('Random Variable 2 Probability Distribution', 'FontWeight', 'normal');
set(gca, 'FontSize', 11);
axis2 = gca;
axis2.XLabel.String = 'Random Variable 2';
axis2.XLim = [0, 100];
axis2.YLabel.String = 'f_2(RV2)';

% Mean Estimate
mean2 = sum(RV2)/length(RV2);

% Variance Estimate
variance2 = 0;
for i = 1:length(RV2)
    variance2 = variance2 + (RV2(i) - mean2)^2;
end
variance2 = variance2/length(RV2);

% Normal distribution including the estimated mean and variance
x2 = linspace(0, 100, 10000);
f_x2 = exp(-1.0 * (x2 - mean2) .* (x2 - mean2) / (2.0 * variance2)) / sqrt(2.0 * pi * variance2);

% Normal Distribution Plot
hold on;
plot(x2, f_x2, 'k', 'LineWidth', 3);
legend('Sample Data', 'Normal Distribution', 'Location', 'North East');
hold off;

% Third random variable
% Count the occurences for each value
H3 = zeros(1, 101);
for i = 1:length(RV3)
    H3(RV3(i) + 1) = H3(RV3(i) + 1) + 1;
end
H3 = H3/length(RV3);

% Probability Distribution Plot
plot3 = figure('Name', 'Random Variable');
stem(RV, H3, 'g');
title('Random Variable 3 Probability Distribution', 'FontWeight', 'normal');
set(gca, 'FontSize', 11);
axis3 = gca;
axis3.XLabel.String = 'Random Variable 3';
axis3.XLim = [0, 100];
axis3.YLabel.String = 'f_3(RV3)';

% Mean Estimate
mean3 = sum(RV3)/length(RV3);

% Variance Estimate
variance3 = 0;
for i = 1:length(RV3)
    variance3 = variance3 + (RV3(i) - mean3)^2;
end
variance3 = variance3/length(RV3);

% Normal distribution including the estimated mean and variance
x3 = linspace(0, 100, 10000);
f_x3 = exp(-1.0 * (x3 - mean3) .* (x3 - mean3) / (2.0 * variance3)) / sqrt(2.0 * pi * variance3);

% Normal Distribution Plot
hold on;
plot(x3, f_x3, 'k', 'LineWidth', 3);
legend('Sample Data', 'Normal Distribution', 'Location', 'North East');
hold off;
