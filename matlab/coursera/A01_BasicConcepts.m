format compact

%{

Lesson 1: Basic Concepts 
============================================================

* clear <variable name> - clears the variable from memory

* clc - Clears the command window 

* Save - saves the workspace in a .mat file. Workspace can be restarted from there. 

* Name of script has to start with a character. Numbers or _ etc will not work.

* Strings are enclosed in either ‘  or “

* Variables:
    - Case sensitive so test_var and Test_Var are different
    - Cant start with _
    - Max number of char in a variable = 64 
    - Variable assignment : Similar to python etc: x = 5 

* When assigning a variable, there is a echo of value on prompt. This can be suppressed by putting a ; in the end

* Multiple commands on a line: Use “;”

* To carry over a command into another line, use epsilon (...). E.g.
		A_very_very_long_variable name = A_very_long_variable name  + …
							A_long_variable name 
* Help: How to get help: 
    - help <name of command>
    - Use the help search bar at top
    - doc <name of command> - output similar to the search bar 
* Format command: Change the display format
    - format loose ==> inserts lines between two commands or outputs
    - format compact  ==> compact display
    - format long or short --> shows with extra or lesser number of decimal places respective
    - Doesn’t changes the accuracy.. Just the display is changed

* Plotting 
    - E.g. this is a 3d plot and can be seen in 3 dimensions/moved around etc. 
		t = 0:pi/50:10*pi;
        	plot3(sin(t),cos(t),t);
    - E.g.: Plot just the points with either * or . and not the line
            plot(x_coordinates, y_coordinates, '*')
        Note the * is in eclosed in ‘	
    - Take help using doc plot and try.

    - Grid on -- will show grid lines
    - xlabel and ylabel can be used to set the text for axis 
    - Close figure windows: 
        - close for current figure
        - Close  # for specific window
        - Close all for all the figures
    - Images: 
        - Reading: x = imread ()
        - Display: image(x)	

%}


a = [1,2,3; 4,5,6]
plot (a)

plot(1:.1:pi, sin(1:.1:pi))


%Calculate distance in KMs in a lightyear:
speed_kps = 300000
year_sec = 365*24*60*60
lightyear_km = speed_kps * year_sec

% Earth to sun distance 
earth_to_sun_km = 150e+6
earth_to_sun_sec = earth_to_sun_km/speed_kps
earth_to_sun_min = earth_to_sun_sec / 60

% Earth to Moon distance 
earth_to_moon_km = 384400
earth_to_moon_sec = earth_to_moon_km/speed_kps
earth_to_moon_min = earth_to_moon_sec / 60


% 3 D Plot:
t = 0:pi/50:10*pi;
figure
plot3(sin(t),cos(t),t);


% Plot: 

x_coordinates = [1,3,10]
y_coordinates = [2,-4.2,12.3]

plot(x_coordinates, y_coordinates)

% Length of vector x_coordinates: 
length(x_coordinates)

% Plot just the points with either * or . and not the line 
plot(x_coordinates, y_coordinates, '*')

plot(x_coordinates, y_coordinates, 'r') % red squares

plot(x_coordinates, y_coordinates, 'b:') % dotted lines

%Set grid and labels
grid on 
xlabel('Selection')
ylabel('Change')

%Set title 
title ('Changes in selection')

%Set Axis: 
axis([0,12,-10,20])


% ---------------------------------------------------------------
% BAR
% ---------------------------------------------------------------
figure
bar (x_coordinates, y_coordinates)

% ---------------------------------------------------------------
% Pie
% ---------------------------------------------------------------
figure
pie ([4,2,7,4,7])


% ---------------------------------------------------------------
% Image Read and view
% ---------------------------------------------------------------
% Dont forget to put the semicolon or it will show all the 
% numbers for the image on the prompt
picture = imread('data/Iasi_cultural_palace.jpg');

image(picture)
axis off
