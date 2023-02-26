clear all, clc

f = @ (x) x*sin(x);

%a = 0;
disp('Enter lower bound limit')
a = input("Lower bound limit: ");

%b = pi;
disp('Enter upper bound limit')
b = input("Upper bound limit: ");

%N = 6;
disp('Enter number of intervals')
N = input("Enter intervals: ");

fprintf('\nThe solution using Simpsons 1/3rd Rule is: \n')
integral = simpson_rule (f,a,b,N)

function sum = simpson_rule (f,a,b,N)
sum = 0;

h = (b - a) / N;

for i = 1:N
    x1 = a + ((i - 1) * h);
    x2 = a + (i * h);
    
    y1 = f(x1);
    y2 = f(x1 + h/2);
    y3 = f(x2);
    
    area = (h/6) * (y1 + y3 + 4*y2);
    sum = sum + area;
    
    fprintf('Y: %.4f, Area: %.2f, Sum: %.4f\n', y1, area, sum)

end
end