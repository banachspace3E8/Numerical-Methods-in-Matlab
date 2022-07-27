%Shishir Khanal
%Matlab function to test least squares regression algorithm
% Example 1: T = a1*h + a0
%---------------------------------------

clc;clear;
h = [-1000 0 3000 8000 15000 22000 28000];
T = [213.9 212 206.2 196.2 184.4 172.6 163.1];
[b, m] = least_squares(h, T);

plot(h, T, 'ro')
hold on
plot(h, m*h + b)
axis tight
title(sprintf('T = %.4fx + %.4f ', m, b))