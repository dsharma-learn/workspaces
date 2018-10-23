%% **************************************************************************
% LESSON 5A: SELECTION
% **************************************************************************

%CONTROL FLOW:     SEQUENTIAL AND BRANCHING

if x==2
    fprintf('yay!!');
elseif x <42
    fprintf('yay less than 42!!');
else 
    fprintf('try again');
end 


%% **************************************************************************
% LESSON 5B: IF STATEMENTS 
% **************************************************************************




%% **************************************************************************
% LESSON 5C: RELATIONAL AND LOGICAL OPERATORS
% **************************************************************************
% ==, ~= (not equal to), >, >=, <, <= 

% relation operators Return 1 or 0
% Non Zero = true. Zero = false


x=16*64> 1000+9

x= [1 -1 7 5 3]
y=[5 -9 6 5 -3]

a=x.* y

b=x>y

%counting the elements 14
sum([14 9 3 14 8 3]==14)



%**************
% Logical operators: not ~, and &&, or || 

x=[1 pi 0 -2]
~x


1.4 < sqrt(2) & [pi>3 -1>1]
% in the above statement < has the precedence higher than & hence 1.4<sqrt is evaluated first.


%% **************************************************************************
% LESSON 5D: NESTED IF STATEMENTS 
% **************************************************************************

%if between another if else statement



%% **************************************************************************
% LESSON 5E: VARIABLE NUMBER OF FUNCTION ARGS
% **************************************************************************

% Behave differetly based on number or types of arguments
%nargin - function for getting number of input args
%nargout- function for getting number of output args

% refer to function mutable


%% **************************************************************************
% LESSON 5F: ROBUSTNESS
% **************************************************************************

%1. check for input values and missing or default params
%2. send out errors if needed using error statement
%
%Comments immediately after function appears in the help statement (think of it as javadocs)

%% **************************************************************************
% LESSON 5G: PERSISTENT VARIABLES
% **************************************************************************

%Variable types: Local, Global, Persistent

% Similar to global variables. Values persist between the two function calls.
% local variable 
% rarely used 
% however no sideeffects of global variables


%see function accumulate
%to clear the persistent variable, call clear <function>
