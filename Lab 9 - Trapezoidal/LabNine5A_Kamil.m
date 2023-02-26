clc, clear all

f = @ (x) x*sin(x);

%a = 0;
disp('Enter lower bound limit')
a = input("Lower bound limit: ");

%b = pi;
disp('Enter upper bound limit')
b = input("Upper bound limit: ");

%N = 20;
disp('First Enter Value of N')
N = input('No. of Intervals: ');

fprintf('\nThe solution using Trapazoid Rule is: \n')
integral = trapozide_rule (f,a,b,N)

function sum = trapozide_rule (f,a,b,N)

h = (b - a) / N;
sum = 0;

for i = 1:N
    x1 = a + ((i - 1) * h);
    x2 = a + (i * h);
    y1 = f(x1);
    y2 = f(x2);
    area = (y1 + y2) * (h / 2);
    sum = sum + area;
    
    fprintf('Y: %.2f, Area: %.2f\n', y1, area)

end
end