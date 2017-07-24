%% **************************************************************************
% LESSON 2: MATRICES AND OPERATORS
% **************************************************************************
format compact


%% **************************************************************************
% 2A. INTRODUCTION TO MATRICES AND OPERATORS
% **************************************************************************

xvalues = [1,2,10]
X = [0, 1, -1; 2.5, pi, 100]
Y = [1  4  -2; 3, 2*pi, 90]    % Note that there is no comma

sqrt(2) 

sin(30)   % This expects input in radians
sind(30)  % and this one is in degrees
    
size(X)   % dimensions of the matrix

x=5
size(x)   % For matlab, Everything is a matrix. Hence x is a matrix of 1x1



%% **************************************************************************
% 2B. Colon Operator: 
% **************************************************************************
%SYNTAX: <starting point> : <Increments> : <End point> 
% creates a vector 

x = 1:3:7 % Start with 1, take steps of 3 and end when 7 is reached
y = 1:3:10 
z = 7:-3:1 


% if only 2 elements are provided, then its a default increment of 1
z=1:10

% MATLAB has functions corresponding to the operators. e.g. plus and colon
% Plus function: similar to + operator but this is function
% Similarly, there is a colon function that does the same as : 
x1 = colon (1,10)
y1 = colon (1,3,10)

z= plus (y1,10)

%NOTE: 
% 1. Inputs to an operator are called Operands
% 2. Inputs to a function are called arguments

% Colon operator alwaus returns the vector (even when there is no possible 
% value) hence size will be 1x0. However its not same as [ ] as the size 
% of empty matrix is 0x0

%% **************************************************************************
% 2C. ACCESSING PARTS OF MATRIX: 
% **************************************************************************
% To Access, a(2,3) so 2nd row and 3rd col
X=[1:4; 5:8; 9:12]

tom=X(2,3)

% Assignment: 
X(2,3) = 99

% If the specific index doesnt exist, matlab will extend it to minimum 
%possible size to service the command. Rest of the new values are defaulted 
% to 0
X(4,5) = 88

%SubArray: 
X(2,[3,5]) % This will fetch 3 and 5th cols from 2nd row

%Its possible to combine subarrays with colon operator to accvess data: e.g. 
X(2:-1:1, 3:-1:1)

%To access last row or column, use "end" keyword (reserved, special words in 
% the language). e.g.
X(end,:)
X(:,end)

% If you want to get all the elements of a multi dimensional array in a single vector, then use : as below
a = [1:3;4:6;7:9]
v = a(:) % this will create a single vector.


%% **************************************************************************
% 2D. COMBINING AND TRANSFORMING MATRICES: 
% **************************************************************************
clear 
clc 

a1 = [1 1 1 ; 1 1 1]
a2 = [2 2 2 ; 2 2 2]
a3 = [3 3 3 ; 3 3 3]

[a1 a2 a3]   % place them side by side i.e. adding as columns
[a1;a2;a3]   % stack them - place them vertically i.e. adding as rows

b1 = [1:1]
b2 = [2 2; 2 2]
b3 = [3 3 3; 3 3 3]


% Transposing: 
H = [1 2 3 ; 4 5 6]
G = H'    

%% **************************************************************************
% 2E. ARITHMATICS: 
% **************************************************************************
clear
clc
X = [1 5 -2; 3 0 7]
Y = [1:3 ; 4:6]
ZADD   = X+Y 
ZMINUS = X-Y

ZMULT = X.*Y % NOTE THAT ITS .* AND NOT * AS LATER IS USED FOR MATRIX MULTIPLICATION

% for matrix multiplication, inner dimensions of two matrix must agree else error is thrown. 
A = [1:3;4:6;6 1 1; 0 1 3 ]
B = [2 -2; 3 8; 7 4]

[size(A) size(B)] % inner dimensions will agree here

AB = A*B % MATRIX OF SIZE 4*2 
%BA = B*A % WILL NOT WORK

% EXAMPLE: STOCK MARKET. tHE MATRIX A COULD BE 3 STOCKS (COLUMNS) OWNED BY 4 PERSONS (ROWS) AND 
% MATRIX B HAS PRICE DATA FOR EACH OF THE THREE STOCKS FOR TWO DAYS. MATRIX MULTIPLICATION WILL 
% HELP IN CALCULATING THE NET VALUE FOR BOTH DAYS FOR EACH OF THE INVESTORS.


% ---------------------
% ARRAY DIVISION
% ---------------------
% X./Y - "OVER DIVISION" AND 
% X.\Y - "UNDER DIVISION"
%E.G.
X = [1 4; 7 1; 5 5]
Y = [2 -4;6 2; 1 3]

Z1 = X./Y
Z2 = X.\Y


%-----------
% EXPONENTIAL OPERATOR
%-----------

a1 = 2^3
x1 = X.^3

X=[1:2;3:4]
N=[6 0.5; -1 2]
X2 = X.^N   %  CORRESPONDING VALUES ARE USED IN CALCULATING THE EXPONENTIAL VALUE
X3 = X*X*X % THIS AND x^3 ARE SAME. 
X31 = X^3 % THIS IS ONLY POSSIBLE WHEN THERE IS SQUARE MATRIX ELSE INNER DIMENSIONS WILL NOT MATCH

% NOTE: DIVISIONS WITH SCALAR DONT WORK. REST OF THE OPERATIONS WORK
X+1
X-1
X*2
X./2
2./X
2.\X
X/2
2\X
% 2/X DOESNT WORK
% X\2 DOESNT WORK

X^2 % wILL WORK ONLY FOR SQUARE MATRIX. NOT FOR OTHER MATRICES

%% **************************************************************************
% 2F. Operator PRECEDENCE: 
% **************************************************************************
% PRECEDENCE AND ASSOCIATIVITY
% 0     PARENTHESESS
% 1     ^ (EXPONENTIATION) AND ' (TRANSPOSITION)    
% 2     UNARY + AND -    
% 3     MULTIPLICATION AND DIVISION ARRAY AND MATRIX 
% 4     ADDITION AND SUBRACTION 
% 5     COLON OPERATOR 
%
% ASSOCIATIVITY (ORDER IN WHICH OPERATORS OF SAME PRECEDENCE ARE EVALUATED.)
% IN MATLAB, ITS ALWAYS LEFT TO RIGHT
% HENCE 6 - 2 + 3 = (6 - 2) + 3 AND NOT 6 - (2 + 3)
% SIMILARLY 6^2^3 = (6^2)^3 AND NOT 6^(2^3) 

6^2^3 
6^(2^3)
(6^2)^3

1:3+10 % HERE + HAS HAS HIGHER PRECEDENCE. SO IT WILL ADD 3 AND 10 AND CREATE A VECTOR OF 13:
 
% TO GET THE PRECEDENCE TABLE: 
help precedence


%% **************************************************************************
% 2F. Excercises: 
% **************************************************************************
% Question 1: 
a = [1 2 3; 4 5 6; 7 8 9] * [0 1 0]'

% Question 2:
A = [1:4; 2:2:9; 0 0 2 -1]; 
s = A(end,3);

% Question 4: 
v = -55:5:55
size(v)

% Question 7:
v = 1:2:22; t = v(end) 
