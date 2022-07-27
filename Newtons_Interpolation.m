%Shishir Khanal
%Matlab function to interpolate a parameter in the data using Newtons
%Divided Difference Algorithm
%--------------------------------------

function Yint = Newtons_Interpolation(x, y, Xint)

n = length(x);
a(1) = y(1);

for i = 1 : (n - 1)
    F(i, 1) = (y(i + 1) - y(i)) / (x(i + 1) - x(i));
end

for j = 2 : (n - 1)
    for i = 1:(n - j)
        F(i, j) = (F(i + 1, j - 1) - F(i, j - 1)) / (x(j + i) - x(i));
    end
end

for j = 2:n
    a(j) = F(1, j - 1);
end
Yint = a(1);
xn = 1;

for k = 2:n
    xn = xn*(Xint - x(k-1))
    Yint = Yint + (a(k) * x(n))
end
end