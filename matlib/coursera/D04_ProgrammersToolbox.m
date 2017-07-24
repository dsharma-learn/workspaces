% Polymorphism ---> same function behaves differently for different types of arg. e.g. sqrt on a matrix vs scala
a=[1 4;9 16; 25 36]
sqrt_a = sqrt (a)

% However some of the functions behave differently. For E.g. 

a = [1:10] 
sum (a)

b=[1 2;3 4; 5 6] 
sum(b)    % This will return row vector with sum of each of the columns 


% max function:

[maxnum  index_of_max_num] = max( [1 2 -4 8] )



% ------------------------------------------------------------------------
% Function for matrix creation:
zeros(4)
zeros (3,4)
ones(5,4)
6*ones(5,4)

%Diagonal matrix: 
diag ([7 8 9 5])

eye (3,4)

rand (4,5)
% For all these, if you provide only one argument, then it creates a square matrix.

% getting integer random number:
rand_mat = 1 + rand (5,4)*10
fix (rand_mat)
floor (rand_mat)
ceil (rand_mat)

%there is a builtin function for creating matrices with random integer values:
randi (10,4,5) % Values up to 10, 4x5 matrix 
randi ( [10 20],4,5) % Values between 10 and 20, 4x5 matrix 

%Random numbers following Normal or Gaussian distribution /bell curve: 

x = randn ( 4,5) % 4x5 matrix with normal distribution of mean 0 and SD 1

r = randn(1,1000000);
hist(r,1000); % Second argument is the number of bins. 



% RAndom Number: Not truely random. Always start with 0.8147.
% Can set seed with rng()
% Can get a differnet random number everytime: use rng('shuffle')