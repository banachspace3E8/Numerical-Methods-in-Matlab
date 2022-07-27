%Shishir Khanal
%Matlab code to evaluate polynomial interploation using Newton's divided
%differences
% Example 12
%---------------------------------------

clc;clear;
wind = [14 22 30 38 46];
power = [320 490 540 500 480];
yint = Newtons_Interpolation(wind, power, 26);
fprintf('Electric power at 26 mph = %.5f W\n', yint)