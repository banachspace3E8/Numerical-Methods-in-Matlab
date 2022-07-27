%Shishir Khanal
%Matlab function to test linear splines
%---------------------------------------

clear;clc;

h = [100 80 60 40 20 0];
t = [0 2.02 2.86 3.5 4.04 4.51];
Tint  = 3;
Hint = Linear_Spline(t, h, Tint);
fprintf('The approximation of h at %d seconds is %.5f\n', Tint, Hint);
plot(t, h, 'ro')
hold on
plot(Tint, Hint, 'p')