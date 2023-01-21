% ELEC 326
% Group Simulation Activity 2
% Question 1 - Part III
% Emma Chan, Charlotte Lombard, Jack Mason, Jake Moffat

% Prompt: Write a MATLAB code to estimate the joint PMF of (x,y).

% ---------------------------------------------------------------------
% Part II data generation

% define the number of trials (100000)
N = 1e5;

% generate N = 100000 realizations of (x,y)
numN = rand(1,N);

% initialize matrix named XY
XY = zeros(2, N);

% using the table, create joint PMF cases
% case (0, 0) = 0.0 | case (0, 1) = 0.1 | 
% case (1, 0) = 1.0 | case (1, 1) = 1.1 |

% for case (0, 0)
numN(numN <= 0.25) = 0.1;

% case (0, 1)
numN((numN > 0.25) & (numN <= 0.75)) = 0.2;

% case (1, 0)
numN((numN > 0.75) & (numN <= 0.875)) = 0.3;

% case (1, 1)
numN(numN > 0.875) = 0.4;

% save observed values in XY matrix
for n = 1:N
    switch(numN(n))
        case 0.1 % (0, 0)
            XY(:, n) = [0; 0];
        case 0.2 % (0 , 1)
            XY(:, n) = [0; 1];
        case 0.3 % (1 , 0)
            XY(:, n) = [1; 0];
        case 0.4 % (1 , 1)
            XY(:, n) = [1; 1];
    end
end    

% ---------------------------------------------------------------------
% Part III
% Prompt: To this end, you need to write a MATLAB code to count the 
% number of times each possible outcome is observed and save them in a 
% vector named H (for example, if (x = 1,y = 0) is observed 150 times, 
% then H(1,0) = 150). Then divide H by the number of trials N and plot 
% it in a 3D space and compare it with the joint PMF you calculated in 
% section I.

% The Vector named H
H = zeros(2, 2);

% Count the occurences of each case generated in Part II
for n = 1:N;
    numN = XY(:, n);
    numN = numN + 1;
    H(numN(1), numN(2)) = H(numN(1), numN(2)) + 1;
end

% initialzie the Joint PMF to compare to the Joint PMF in Part I
jointPMF = H / N;

% initialize x and y values in the grid 
% create the new Joint PMF plot for the generated data in 3D
plot1 = figure('Name', 'Generated Joint PMF');

%stem3(x, y, jointPMF, 'Color', 'r');
%stem3(x, y, jointPMF, 'LineWidth', 2);
stem3(x, y, jointPMF, 'Color', 'g', 'LineWidth', 2);

title('Joint PMF of Generated x and y values in 3D', 'FontWeight', 'normal');
set(gca, 'FontSize', 11);
axis1 = gca;
axis1.XLabel.String = 'x';
% axis1.XLim = [0, 100];
axis1.YLabel.String = 'y';
axis1.ZLabel.String = 'p_{x,y}(x,y)';
axis1.ZLim = [0, 1];

            


