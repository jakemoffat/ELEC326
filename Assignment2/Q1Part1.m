% ELEC 326
% Group Simulation Activity 2
% Question 1 - Part I
% Emma Chan, Charlotte Lombard, Jack Mason, Jake Moffat

% Prompt: Write a MATLAB code to plot the joint PMF and joint CDF of 
% these two RVs in a 3D space (z axis shows the joint probability value).

% Load the RVs - don't need for this part
% RV1 = load('RV1.mat').RV1;
% RV2 = load('RV2.mat').RV2;
% RV3 = load('RV3.mat').RV3;

% Initialize x and y values in the grid
[x, y] = meshgrid(0:1, 0:1);

% define the joint PMF of x and y
jointPMF = [0.25, 0.125; 0.5, 0.125];

% define the joint CDF of x and y 
jointCDF = [jointPMF(1, 1), jointPMF(1, 1) + jointPMF(1, 2); jointPMF(1, 1) + jointPMF(2, 1), sum(jointPMF, 'all')];

% plot the joint PMF in 3D
plot1 = figure('Name', 'Joint PMF');
%stem3(x, y, jointPMF, 'Color', 'r');
%stem3(x, y, jointPMF, 'LineWidth', 2);
stem3(x, y, jointPMF, 'Color', 'r', 'LineWidth', 2);

title('Joint PMF of x and y in 3D', 'FontWeight', 'normal');
set(gca, 'FontSize', 11);
axis1 = gca;
axis1.XLabel.String = 'x';
% axis1.XLim = [0, 100];
axis1.YLabel.String = 'y';
axis1.ZLabel.String = 'p_{x,y}(x,y)';
axis1.ZLim = [0, 1];

% plot the joint CDF in 3D
plot2 = figure('Name', 'Joint CDF');
% stem3(x, y, jointCDF, 'Color', 'b');
% stem3(x, y, jointCDF, 'LineWidth', 2);
stem3(x, y, jointCDF, 'Color', 'b', 'LineWidth', 2);

title('Joint CDF of x and y in 3D', 'FontWeight', 'normal');
set(gca, 'FontSize', 11);
axis2 = gca;
axis2.XLabel.String = 'x';
% axis2.XLim = [0, 100];
axis2.YLabel.String = 'y';
axis2.ZLabel.String = 'F_{x,y}(x,y)';
axis2.ZLim = [0, 1];
