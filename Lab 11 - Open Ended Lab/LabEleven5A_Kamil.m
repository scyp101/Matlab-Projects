clear all, clc

%% Defining
f = @(x) cos(2*x);

%a = 0;
%b = 3.142;
%N = 6;

disp('Enter the value of a')
a = input('Value of a: ');
fprintf("\n")

disp('Enter the value of b')
b = input('Value of b: ');
fprintf("\n")

disp('Enter Value of N')
N = input('No. of intervals: ');
fprintf("\n")

%% Trapozoidal Rule
hT = (b - a) / N;
sumT = 0;

for j = 1:N
    x_1 = a + ((j - 1) * hT);
    x_2 = a + (j * hT);
    
    y_1 = f(x_1);
    y_2 = f(x_2);
    
    areaT = (y_1 + y_2)*(hT/2);
    sumT = sumT + areaT;
    
    Trapozide(j) = sumT;
 
    %fprintf('Y: %.2f, Area: %.2f, Sum: %.4f\n',y_1, areaT, sumT)
end

%% Simpson Rule
sumS = 0;
hS = (b - a) / N;

for j = 1:N
    x1 = a + ((j - 1) * hS);
    x2 = a + (j * hS);
    
    y1 = f(x1);
    y2 = f(x1 + hS/2);
    y3 = f(x2);
    
    areaS = (hS/6) * (y1 + y3 + 4*y2);
    sumS = sumS + areaS;
    
    Simpson(j) = sumS;
    
    %fprintf('Y: %.4f, Area: %.2f, Sum: %.4f\n', y1, areaS, sumS)
end

%% Print Statements
fprintf("Iteration  Trapazoidal  Simpson\n")
for k = 1:N
    if Trapozide(k) < 0 && Simpson(k) < 0 && k < 10
        fprintf("%.0f         %.4f      %.4f\n", k, Trapozide(k), Simpson(k))
    elseif Trapozide(k) >= 0 && Simpson(k) >= 0 && k < 10
        fprintf("%.0f          %.4f       %.4f\n", k, Trapozide(k), Simpson(k))
    elseif Trapozide(k) < 0 && Simpson(k) < 0 && k >= 10 && k < 100
        fprintf("%.0f        %.4f      %.4f\n", k, Trapozide(k), Simpson(k))
    elseif Trapozide(k) >= 0 && Simpson(k) >= 0 && k >= 10 && k < 100
        fprintf("%.0f         %.4f       %.4f\n", k, Trapozide(k), Simpson(k))
    elseif Trapozide(k) < 0 && Simpson(k) < 0 && k >= 100 && k < 1000
        fprintf("%.0f       %.4f      %.4f\n", k, Trapozide(k), Simpson(k))
    elseif Trapozide(k) >= 0 && Simpson(k) >= 0 && k >= 100 && k < 1000
        fprintf("%.0f        %.4f       %.4f\n", k, Trapozide(k), Simpson(k))
    elseif Trapozide(k) < 0 && Simpson(k) < 0 && k >= 1000
        fprintf("%.0f      %.4f      %.4f\n", k, Trapozide(k), Simpson(k))
    elseif Trapozide(k) >= 0 && Simpson(k) >= 0 && k >= 1000
        fprintf("%.0f       %.4f       %.4f\n", k, Trapozide(k), Simpson(k))
    end
end