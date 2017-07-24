format compact

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

plot(x_coordinates, y_coordinates, 'rs') % red squares

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
