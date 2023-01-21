% ELEC 326
% Group Simulation Activity 2
% Question 1 - Part II
% Emma Chan, Charlotte Lombard, Jack Mason, Jake Moffat

% Prompt: Write a MATLAB code to generate N = 100000 realizations of (x,y)
% and save the observed values in a 2×100000 matrix named XY.

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
            


