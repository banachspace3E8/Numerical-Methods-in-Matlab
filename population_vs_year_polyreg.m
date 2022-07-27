%Shishir Khanal
%Matlab function to test polynomial regression algorithm
% Example 2: P = a2 * t^2 + a1 * t + a0
%---------------------------------------

clc;clear;

year = [1815 1845 1875 1905 1935 1965];
pop = [8.3 19.7 44.4 83.2 127.1 190.9];
m = 2;
%Using the custom function
x = polynomial_regression(year, pop, m);
subplot(2,1,1)
plot(year, pop, 'ro')
hold on
plot(year, x(3) * year.^2 + x(2) * year + x(1))
title(sprintf('Population = %.4f year^2 + %.4f year + %.4f (Custom)', x(3), x(2), x(1)));

%------------------------------------
%Using inbuilt matlab function

coeffs = polyfit(year, pop, 2);
pop_est = polyval(coeffs, year);
subplot(2,1,2)
plot(year, pop, 'ro')
hold on
plot(year, pop_est)
title(sprintf('Population = %.4f year^2 + %.4f year + %.4f (Matlab)', coeffs(1), coeffs(2), coeffs(3)));