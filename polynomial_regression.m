%Shishir Khanal
%Matlab function to evaluate least squares linear regression algorithm
% f(x) = a(m) * x(m-1) + a(m - 1) * x(m-2) + ........ + a(1) *x(0) + a(0)
%---------------------------------------

function x = polynomial_regression(x, y, m)

n = length(x);
for i = 1:2*n
    xsum(i) = sum(x.^i);
end
a(1,1) = n;
b(1,1) = sum(y);

for j = 2:m+1
    a(1, j) = xsum(j - 1);
end

for i = 2:m+1
    for j = 1:m+1
        a(i, j) = xsum(j + i - 2);
    end
    b(i, 1) = sum(y.*x.^(i - 1));
end

x = inv(a) * b;
end