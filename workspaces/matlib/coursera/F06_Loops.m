%% **************************************************************************
% LESSON 6: LOOPS
% **************************************************************************

% if the value of i is changed in the for loop, its temporary and only for 
% that iteration. 

% for i = [] - control statement  
% statements - body 
% end 


% For loop can never be infinte. but while can be.

%% **************************************************************************
% while
% **************************************************************************
%while (condition)


% %% - this is for creating sections. 
% Each section can run by itself -- there is a button to execute a section separately in script

% break statement --> exits a loop

% continue statement --> goes to next iteration 


%% **************************************************************************
% logical indexing
% **************************************************************************
%to convert a non logical numeric vector to logical --> 

ind = logical ([1 -2 0 -0.2 12 -9])
x = [1:6]

x(ind)


% arrays of higher dimensions can also be used. however output will be a one-d array:

A=[1:3;4:6];
B=A(A>3) 

% cOLUMN MAJOR --> CONTENTS OF COLUMN 1 FOLLOWED BY 2 AND 3 

rng(0);A=randn(5);
A(A>0.1) = 101:108 % will replace however if the numbers of left and right dont match, then error

rng(0);A=randn(5);
A(A>0.1) = sqrt(A(A>0.1))




%% **************************************************************************
% Pre-allocation:
% **************************************************************************

% tic - stards
% toc - stops and prints
% Preallocation makes things faster as the memory is already allocated: 

tic; prealloc; toc;
% Elapsed time is 0.816599 seconds.
tic; prealloc_no; toc;
%Elapsed time is 65.024425 seconds.

