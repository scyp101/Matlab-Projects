clear all, clc

%% Defining Variables and Matrix

v = [6 1.1791;
     9 1.197;
    10 2.302;
    12 2.485];
x = 7;

%% Code

len = length(v) - 1;
B = zeros(len);

B(1,1) = (v(2,2) - v(1,2)) / (v(2,1) - v(1,1));
B(2,1) = (v(3,2) - v(2,2)) / (v(3,1) - v(2,1));
B(3,1) = (v(4,2) - v(3,2)) / (v(4,1) - v(3,1));

B(1,2) = (B(2,1) - B(1,1)) / (v(3,1) - v(1,1));
B(2,2) = (B(3,1) - B(2,1)) / (v(4,1) - v(2,1));

B(1,3) = (B(2,2) - B(1,2)) / (v(4,1) - v(1,1));

NewtonTable = B;

y1 = v(1,2) + ((x - v(1,1))*(NewtonTable(1,1)));
y2 = ((x - v(1,1))*(x - v(2,1))*(NewtonTable(1,2)));
y3 = ((x - v(1,1))*(x - v(2,1))*(x - v(3,1))*(NewtonTable(1,3)));
y = y1 + y2 + y3;
    
%% Output

fprintf("Newton's divided difference table is: \n")
NewtonTable

fprintf("\nAt X = %.4f, after interpolation, Y Value = %.4f \n", x, y)