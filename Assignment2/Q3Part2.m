% ELEC 326
% Group Simulation Activity 2
% Question 3 - Part II
% Emma Chan, Charlotte Lombard, Jack Mason, Jake Moffat

% Prompt: Write a MATLAB code to plot the conditional PMF of p_x|y(x|40) 
% and compare it with p_x|y(x|10)

% using H.mat, create a matrix with the same name, H - same as Part I
% RV1 = load('RV1.mat').RV1; sample load from Activity 1
H = load('H.mat').H;

% initialize p_x|y(x|40) and p_x|y(x|10)
Pxy_x40 = H(:, 41) / sum(H(:, 41)); % index 41 = 40
Pxy_x10 = H(:, 11) / sum(H(:, 11)); % index 11 = 10

% ---------------------------------------------------------------------
% Plot 1
% Plot the conditional PMF of p_x|y(x|40)
plot1 = figure('Name', 'Conditional PMF x|40');

%stem(x, y, 'Color', 'r', 'LineWidth', 2);
%[x] = meshgrid(0:100); 
x = (0:100);
stem(x, Pxy_x40, 'Color', 'r', 'LineWidth', 1);
title('Conditional PMF given y = 40', 'FontWeight', 'normal');
set(gca, 'FontSize', 11);
axis1 = gca;
axis1.XLabel.String = 'x';
axis1.YLabel.String = 'p_{x|y}(x|40)';

% ---------------------------------------------------------------------
% Plot 2
% Plot the conditional PMF of p_x|y(x|10)
plot1 = figure('Name', 'Conditional PMF x|10');

stem(x, Pxy_x10, 'Color', 'b', 'LineWidth', 1);
title('Conditional PMF given y = 10', 'FontWeight', 'normal');
set(gca, 'FontSize', 11);
axis1 = gca;
axis1.XLabel.String = 'x';
axis1.YLabel.String = 'p_{x|y}(x|10)';



