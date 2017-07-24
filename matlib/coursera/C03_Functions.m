% Some additional builtin functions
clear 
clc 
X = rand(3,4);        % This create a 3X4 matrix with random values all between 0 and 1 
Y = 1 + rand(3,4)*9;  % Between 1 and 10 

% Matrix of ones and zeroes: 
ones(3,5)
zeros (4,8)

% CREATING USER DEFINED FUNCTIONS

% NOTE: to open editor : type "edit" on command prompt
% To create your own function say my own random myRand. refer to code in myRand.m
% Code for each function is stored separately in a file named as the name of function. 


% Syntax:
% function [out_arg1, out_arg2...] = function_name (in_arg1, in_arg2...)
% end 





% CREATING SUB FUNCTIONS
%Sub functions can be called only by the main function. Cant be called from outside. 
% Refer to myRandSubFunc


% Scope of variables 
% Scope is the set of statements that can access the variables. 
% variables by default are defined as local. so not accessible outside of function where its defined.

% To define a variable as global:
%    a. use global keyword: global v; 
%    b. make sure that there that assignment is not done in the declaration statement. So global v= M(:); is not valid.





% Advantages of functions :
% 1. Breakdown complex problems
% 2. make it more managable
% 3. Code Reuse
% 4. Generality

% Functional decomposition --> Breaking the bigger problem into smaller managable functions




% Scripts:
% 1. Scripts dont take input or give outputs.
% 2. Their scope is whatever is availalbe in the command window. Hence if there 
%    are already some variables lying there, they will be used. This is different 
%    behaviour than that of a function


%e.g.: 

fprintf('This concludes the lesson'); 
pause(5);
%quit;
