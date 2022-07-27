%Shishir Khanal
%Matlab function to test cubic splines
%---------------------------------------

clc;clear; close all;
x=[32 33 37 48 67 87 113 145 177 208 241 263 281 298 306 322 340 345 352 359 361 363];
y=[179 164 145 119 91 67 49 32 24 22 32 45 62 83 92 98 97 109 121 139 156 172];
subplot(2, 1,1)
plot(x, y, 'o')
grid on
hold on
xint = 32;
for i = 1:662
    xint = xint + 0.5;
    Yint = Cubic_Splines(x, y, xint);
    plot(xint, Yint, 'r.')
end
title('Using cubic splines to trace out the curvature of a car with few coordinates information along the trajectory')
set(gca,'Ydir','reverse')
hold off

subplot(2,1,2)
plot(x, y, 'o')
hold on
grid on
xint1 = 32;
for j = 1:662
    xint1 = xint1 + 0.5;
    Yint_matlab = interp1(x, y, xint1, 'spline');
    plot(xint1, Yint_matlab, 'r.')
end
title('Trajectory Tracking using Matlab function interp1()')

set(gca,'Ydir','reverse')
hold off