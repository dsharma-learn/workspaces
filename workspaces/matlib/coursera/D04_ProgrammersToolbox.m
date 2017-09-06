%% **************************************************************************
% LESSON 4: PROGRAMMERS TOOLBOX
% **************************************************************************

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


%% **************************************************************************
% LESSON 4B: MATRIX BUILDING
% **************************************************************************

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

%% **************************************************************************
% LESSON 4C: INPUT OUTPUT
% **************************************************************************
% - Can use Input function for getting user inputs. Refer to fn_io_example.m
% - Note that string passed in as prompt has to be in single quotes '
fn_io_example


fprintf ("\n Examples of \n number = %d \n float with 2 decimal = %.2f \n float with 3 decimal = %.3f \n and a percent and backslash signs : %% \\",num,flt,flt);



%% **************************************************************************
% LESSON 4D: PLOTTING
% **************************************************************************
t=[1:10]
a =[1:10].^2
plot(a)

b=(-10:10).^2
plot(b)

% With figure command, you can start a new figure wondow: 

b1= (-10:10)
figure (4)
plot(b1,b)

% Plot function is polymorphic and can take diff types of values
%e.g.

x1= 0:0.1:2*pi; y1=sin(x1);
x2= pi/2:0.1:3*pi; y2=cos(x2);

plot(x1,y1,x2,y2)

% With diff colors: 
plot(x1,y1,'r', x2,y2, 'k:') %k for black, : for dotted line

help plot


figure (1);
plot (t,a,'m--o') %  = magenta, o=circle and -- dashed

%to plot multiple curves on the same figure, use hold command: 
figure (2)
plot(x1,y1,'r')
hold on

plot(x2,y2,'k--x')

% grid : turns on and off the grid lines
grid

% setting title, lables and legends
title ('A sine and cosine curve');
xlabel ('Argument to sine or cosine');
ylabel ('Value of sine or cosine');
legend('sine','cosine')

%Order in which the legend appears is in same squence as what was plotted

% to set the custom axis: 
axis([-2 12 -1.5 1.5])


%% **************************************************************************
% LESSON 4E: DEBUGGING
% **************************************************************************
%Syntax error - can be found at the start of execution 
%Symantic Error - Runtime error - can be found while execution is in progress

%During debugging, the prompt changes to K that means it possible to use 
% keyboard inputs

% To quit debugger: dbquit or quit debugging button on top