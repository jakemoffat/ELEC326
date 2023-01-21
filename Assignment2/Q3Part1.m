% ELEC 326
% Group Simulation Activity 2
% Question 3 - Part I
% Emma Chan, Charlotte Lombard, Jack Mason, Jake Moffat

% Prompt: Write a MATLAB code to estimate the probability that x takes 
% values between 20 and 70.

% using H.mat, create a matrix with the same name, H
% RV1 = load('RV1.mat').RV1; sample load from Activity 1
H = load('H.mat').H;

% Estimate the probability that x takes values between 20 and 70
% Note: use indexes 21 and 71 as MatLab starts at 1, not 0
P_20_x_70 = sum(sum(H(21:71, :)));