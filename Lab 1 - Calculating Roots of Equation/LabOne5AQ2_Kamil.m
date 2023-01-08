clc, clear
%Finding Roots of the Equation
%Q2# x^2 - 9x + 8 = 0

f = [1 -9 8];
root_f = roots(f)

%%
x = -1:0.2:10;
y = x.^2 - 9*x + 8;

%Plotting of the Function

plot(x,y, 'r--');
hold on; %Used for scatter function
title('Kamil Siddiqui - Root Finding Lab2 Q2')
xlabel('X - Axis')
ylabel('Y - Axis')
xlim([-1 10]), ylim([-15 15]);
line([-1 10], [0 0])
line([0 0], [15 -15])

%Pointing the roots on graph
scatter(root_f, [0 0], 'ks');