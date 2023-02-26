clc, clear
%% Defining Function and Variables

f = @(x) x*sin(x)

x0 = 1;
x1 = 3;
xi = x0;
xf = x1;

n = 0;
yi = 1;
yf = 1;

%% Program

fprintf("\n")
fprintf("Iteration          Root          f1          f2\n")

while yi ~= 0 && yf ~= 0
    if yi ~= 0 && yf ~= 0
        yi = f(xi);
        yf = f(xf);
        
        x2 = xf - (((xf-xi)*(yf))/(yf-yi));
        
        xi = xf;
        xf = x2;
        
        n = n + 1;
        yi = round(yi,4); %Rounding off correct to 4 decimal points
        yf = round(yf,4); %Rounding off correct to 4 decimal points
        
        fprintf("%.1f                %.4f        %.4f      %.4f\n", n, x2, yi, yf)

    else
        break
    end
end