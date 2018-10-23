%% **************************************************************************
% LESSON 8: File IO
% **************************************************************************
pwd     
ls 
cd, chdir 
mkdir
rmdir 
delete

contents = ls 
whos contents

cd ..  
cd ('..') % both of these work

copyfile
movefile


save % to save state of workspace
load % load from matlab .mat





%% **************************************************************************
% LESSON 8.1:Excel files
% **************************************************************************
[num text raw] = xlsread (filename) % reads 
% num contains all the numbers
% text  contatins text 
% raw contains everything

% If a function returns multiple values and we are interested in only say 2nd 
% or 3rd arg, use ~

[~ ~ everything] = xlsread (filename) 

% To read a specific cell: 
num = xlsread (filename, 1, 'D15')  % 1 is the sheet here. Name of sheet can also be provided.

num = xlsread (filename, 1, 'D15:E17')  % 1 is the sheet here. Name of sheet can also be provided.


% xlswrite creates the csv . If file is existing, doesnt affect all the cells but just the ones that are modified. 


%% **************************************************************************
% LESSON 8.2: Text files
%% **************************************************************************
fid = fopen (filename, permission);
fclose(fid);

rt (t = textfile) 

+ ==> both read and write 
t ==> Text file 
a ==> Append to existing
r ==> Reading
w ==> writing by discarding 

help fopen 

rt  - Open an existing file for reading 
wt  - Open file for writing and discard existing 
at  - Open or create existing file for writing and append to end 
r+t - Open (do not create) an existing file for writing)
w+t - Open or create file for reading and writing and Discard existing content 
a+t - Open or create file for reading and writing and Append in the end

fid is positive if fopen is successful. Else its negative. 



%% **************************************************************************
% LESSON 8.3: Binary files
% **************************************************************************

%Same as above. Just in fread, datatype needs to be provided:

%fid = fopen ('temp file', 'r')
%A = fread(fid, inf, datatype) --- INF = infinity as we dont know how many characters



rng(0);
Data = randn (10,12);

write_array_bin (Data, 'binfile.bin')

A = read_array_bin ('binfile.bin', 'double')
whos 


% So even though we wrote a 2d array, it was stored and read back as a single stream on number

%There are 2 ways of handling this :
%1. Write dim in the file
%2.

%Option 1: 
write_dims_array_bin (Data, 'binfile.bin')

A = read_dims_array_bin ('binfile.bin', 'double')

isequal(A, Data)


% Custom Read and write functions: 
% custom_write_bin
header = 'Data Requested on Pi day 3/14/15';
Vega = [8, 7, -145];
VLA = [1000, 2000, 700, 0, 48];
W9GFO = [1.45e8, 34e6, 4e7, -1e8]; 

custom_write_bin(header, Vega, VLA, W9GFO, 'Arecibo.dat');


% custom_read_bin 
[header_1, Vega_1, VLA_1 , W9GFO_1] = custom_read_bin ('Arecibo.dat');

