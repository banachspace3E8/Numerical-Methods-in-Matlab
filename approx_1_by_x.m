%Shishir Khanal
%Matlab function to approximate 1/x value by using Lagrange Interpolating
%Polynomials
%---------------------------------------
%Example 10
clear;clc;
x = [8.1 8.3 8.6 8.7];
y = [16.9441 17.56492 18.50515 18.82091];
Xint = 8.4;
Yint = Lagrange_Interpolate(x, y, Xint);
fprintf('f(%.3f) is approximately %.5f\n \n', Xint, Yint)

%Example 11
clear
x = [2 2.5 4];
y = [0.5 0.4 0.25];
Xint = 3;
Yint =  Lagrange_Interpolate(x, y, Xint);
fprintf('f(%.3f) is approximately %.5f\n \n', Xint, Yint)