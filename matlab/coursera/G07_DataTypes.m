%% **************************************************************************
% LESSON 7: Data Types
% **************************************************************************
% all elements in an array should be of same type

% double is default for numeric
%    12.34 = 1234 * 10^-2 ==> 1234 is mantisaa and -2 is exponent
%    8 bytes used to store this. So 64bit
% single - floating type. 4 bytes (32 bits)
% Integer => Signed, unsigned
%             8-, 16-, 32-, 64- bits
% char
% logical

%Inf and NaN

%function: whos:
rng(0); z=rand(3,4);
whos         % For all variables 
whos('z')    % For specific variables


%function: isa:
isa(x,'double')
%function: class: to check the class
x=1
class(x)


% Range Check:
intmax
intmin
realmax
realmin
intmax('uint32')

%Conversion: 
int8(x)
uint32(x)
double(x) 

uint8(500) % as this can be max 255 hence it will be assigned 255 as value

%% **************************************************************************
% LESSON 7A: Strings
% **************************************************************************
%String = vector of chars
% String = with double quotes

%Char is actually a numeric type 
% String function:
char %converts to string 
findstr
ischar
isletter
isspace
isstrprop - find character of specified type in string
num2str 
length
lower
sprintf
strcmp
strcmpi
strmatch
strncmp - match first n chars
strncmpi - ignorecase
str2num
upper

MOOC_Title='MATLAB for smarties'
findstr(MOOC_Title, 'LAB') % returns all instances
findstr(MOOC_Title, 'r')


%e.g.
pi_number=3.1416;
pi_digits='3.1416';

class(pi_number) % retunrs double
class(pi_digits) % retunrs char

pi_number+1 % returns 4.1416
pi_digits+1 % returns 4.1416

%% **************************************************************************
% LESSON 7A: Structs
% **************************************************************************
% diff from arrays:
%    - struct has fields and not element 
%    - filed names and not indices 
%    - can have different data types 

%e.g. 

r.ssn = 12345 
r.name='ABCD'
r.address.street='123 abc street' % wouldnt display the contents of r.address when printing r. 

% Functions
% getfield/setfield - get/set the name of the field passed as parameter 
% isfield - Check if the the name exists as a field in the struct
% isstruct - if an object is struct4
% rmfield - removes the field from structure
% orderfields - changes the order of fields
% struct - creates the struct with the field names as provided

% E.g. Bank account struct
account.number = 12345;
account.balance = 400;
account.owner.name='Joe Black'
account.owner.email='joe@black.com'

class(account.number)
class(account.owner)

% To make array of structs, provide index: 
account(2).number = 12346;
account(2).balance = 1000;
owner.name='David Barclay'
owner.email='David@Barclays.com'
account(2).owner=owner
account(3).owner.name='Rajesh Kumar'
account(3).owner.age=24

% Array of structures have to be homogenouse i.e all elements in such arrays 
% should be structures. 
% However, there is no rule if some of more elements of the internal structures 
% are present or not.  So in above e.g. owner can have different elements. 

account(1:2).owner

isfield(account(1).owner, 'age')
isfield(account(3).owner, 'age')

account(3).owner = rmfield (account(3).owner, 'age') % Note that this doesnt remove it. It has to be assinged back

% Creates a struct with defined structure
% syntax: struct (field1, value1,field2, value2 ...)
course = struct ('area', 'CS', 'number', '103', 'title', 'Intro Programming');


%% **************************************************************************
% LESSON 7A: Cells
% **************************************************************************

%  How to store the page of text 
% Pointer: stores the address of the data
% MAtlab calls pointer a cell 


% STore heterogenous data togeather
% used more than struct

% To access Cell use {}

page{1} = 'String 1'; 
page{2} = 'String 2'; 
page{3} = 'String 3'; 
page{4} = 'String 4'; 
page{5} = 'String 5'; 

for i = 1:length (page)
    fprintf ('%s \n', page{i});
end 

% Use whos to check the details of a variable:
whos page


class (page{1}) % Char 

class (page)    % cell

size (page{4});

% Empty cell array:
p = cell (2,3);

p{2,1} = pi;
p{2,2} = 'awesome';
p{1,1} = int8 (-17);
p{2,3} = [2 4; 6 8; 10 12];

% You cant change the address only the values stored at those values
p{1,3} = sum(p{2,3})

class(p) % cell

p{2,3} (3,2)

% shows numeric values in [] and strings in '' 
c{1} = pi;
c{2} = 'cell or not cell'

c(1) % Shows pointer indicator for numeric []
c(2) % shows pointer indicator string '' 

c{1} % doesnt Show pointer indicator for numeric []
c{2} 


% 2 cells cant point to same objects
c1 = {[1 2], [10 20]}
c2 = c1 % creates a copy of data before pointing. 
c1{1,1} = 'Strawberries'

% There are 2 types of pointers: 1 are similar to c and other are cells 