% ELEC 326
% Group Simulation Activity 2
% Question 1 - Part IV
% Emma Chan, Charlotte Lombard, Jack Mason, Jake Moffat

% Prompt: Write a MATLAB code to estimate the marginal PMFs p_x(x) 
% and p_y(y) using the data generated in section II and then compare 
% them with the theoretical results calculated from the joint PMF 
% given in the above table.

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
% Part IV

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

% Prompt: Write a MATLAB code to estimate the marginal PMFs p_x(x) 
% and p_y(y) using the data generated in section II
PMF_x = [sum(jointPMF(1, :)), sum(jointPMF(2, :))];
PMF_y = [sum(jointPMF(:, 1)), sum(jointPMF(:, 2))];






