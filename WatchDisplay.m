% Sujoy Barua (sujoysb)
% Lauren Berry (lkberry)
% Section 020, Sep 21st, 2021


% Driver program for smartwatch display

%% Get GPS data from user
%
%   img: reading the image in
%   [r,c,t] = getting row, column, and time from GPS_data()
%   rad = getting radiation data at time = t.
%
%
clear;
img = imread('dome_area.jpg');
[r,c,t] = GPS_data();
rad = scan_radiation(t);
rad = removeNoise(rad, 15);
 
 
%% Get display settings
%   z: getting zoom offset from display_setting()

z = display_settings();
 
 
%% Create the heatmap_local.png and zones_local.png images
%   img1: getting the heatmap image using heatmap.m
%   img2: getting the zones image using zones.m
%   imwrite: saving img1 and img2 to appropriate filenames
img1 = heatmap(img, rad);
 
img1 = img1([(r-z):(r+z)], [(c-z):(c+z)], :);

imwrite(img1, 'heatmap_local.png');

img2 = zones(img, rad);
 
img2 = img2([(r-z):(r+z)], [(c-z):(c+z)], :);
 
imwrite(img2, 'zones_local.png');
