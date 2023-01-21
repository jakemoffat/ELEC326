% ELEC 326
% Group Simulation Activity 1
% Question 2 - Part III
% Emma Chan, Charlotte Lombard, Jack Mason, Jake Moffat

% For each RV, using the vectors H1, H2 and H3, write a MATLAB code to estimate the
% probability that that RV takes values between 10 and 40.

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

% Probability of RV1 between values 10 and 40
pRV1 = sum(H1(11:41));

% Mean Estimate
mean1 = sum(RV1)/length(RV1);

% Variance Estimate
variance1 = 0;
for i = 1:length(RV1)
    variance1 = variance1 + (RV1(i) - mean1)^2;
end
variance1 = variance1/length(RV1);

% Second Probability of RV1 between values 10 and 40
x1 = linspace(0, 100, 10000);
f_x1 = @(x1) exp(-1.0 * (x1 - mean1) .* (x1 - mean1) / (2.0 * variance1)) / sqrt(2.0 * pi * variance1);
pRV1_norm = integral(f_x1, 10, 40);

% Second random variable
% Count the occurences for each value
H2 = zeros(1, 101);
for i = 1:length(RV2)
    H2(RV2(i) + 1) = H2(RV2(i) + 1) + 1;
end
H2 = H2/length(RV2);

% Probability of RV2 between values 10 and 40
pRV2 = sum(H2(11:41));

% Mean Estimate
mean2 = sum(RV2)/length(RV2);

% Variance Estimate
variance2 = 0;
for i = 1:length(RV2)
    variance2 = variance2 + (RV2(i) - mean2)^2;
end
variance2 = variance2/length(RV2);

% Second Probability of RV2 between values 10 and 40
x2 = linspace(0, 100, 10000);
f_x2 = @(x2) exp(-1.0 * (x2 - mean2) .* (x2 - mean2) / (2.0 * variance2)) / sqrt(2.0 * pi * variance2);
pRV2_norm = integral(f_x2, 10, 40);

% Third random variable
% Count the occurences for each value
H3 = zeros(1, 101);
for i = 1:length(RV3)
    H3(RV3(i) + 1) = H3(RV3(i) + 1) + 1;
end
H3 = H3/length(RV3);

% Probability of RV1 between values 10 and 40
pRV3 = sum(H3(11:41));

% Mean Estimate
mean3 = sum(RV3)/length(RV3);

% Variance Estimate
variance3 = 0;
for i = 1:length(RV3)
    variance3 = variance3 + (RV3(i) - mean3)^2;
end
variance3 = variance3/length(RV3);

% Second Probability of RV1 between values 10 and 40
x3 = linspace(0, 100, 10000);
f_x3 = @(x3) exp(-1.0 * (x3 - mean3) .* (x3 - mean3) / (2.0 * variance3)) / sqrt(2.0 * pi * variance3);
pRV3_norm = integral(f_x3, 10, 40);

