% ELEC 326
% Group Simulation Activity 1
% Question 2 - Part I
% Emma Chan, Charlotte Lombard, Jack Mason, Jake Moffat

% Prompt: Write a MATLAB code to estimate the mean and variance of each of
% the RVs.

% Load the RVs
RV1 = load('RV1.mat').RV1;
RV2 = load('RV2.mat').RV2;
RV3 = load('RV3.mat').RV3;

% First random variable
% Mean Estimate
mean1 = sum(RV1)/length(RV1);

% Variance Estimate
variance1 = 0;
for i = 1:length(RV1)
    variance1 = variance1 + (RV1(i) - mean1)^2;
end
variance1 = variance1/length(RV1);

% Second random variable
% Mean Estimate
mean2 = sum(RV2)/length(RV2);

% Variance Estimate
variance2 = 0;
for i = 1:length(RV2)
    variance2 = variance2 + (RV2(i) - mean2)^2;
end
variance2 = variance2/length(RV2);

% Third random variable
% Mean Estimate
mean3 = sum(RV3)/length(RV3);

% Variance Estimate
variance3 = 0;
for i = 1:length(RV3)
    variance3 = variance3 + (RV3(i) - mean3)^2;
end
variance3 = variance3/length(RV3);