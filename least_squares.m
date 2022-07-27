%Shishir Khanal
%Matlab function to evaluate least squares linear regression algorithm
% y = a1 * x + a0
%---------------------------------------

function [a0, a1] = least_squares(X,Y)
    SX = sum(X);
    SY = sum(Y);
    SXY = sum(X.*Y);
    SXX = sum(X.*X);

    n = length(X);
    a1 = (n * SXY - SX*SY)/ (n*SXX - SX^2);
    a0 = (SXX*SY - SXY*SX)/(n*SXX - SX^2);
end