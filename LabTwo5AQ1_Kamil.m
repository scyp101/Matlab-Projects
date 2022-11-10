clc, clear
%Finding Roots of the Equation
%Q1# x^2 - 5x + 6 = 0

f = [1 -5 6];
root_f = roots(f)

%%
x = 0:0.2:5;
y = x.^2 - 5*x + 6;

%Plotting of the Function

plot(x,y, 'r--');
hold on; %Used for scatter function
title('Kamil Siddiqui - Root Finding Lab2 Q1')
xlabel('X - Axis')
ylabel('Y - Axis')
xlim([0 5]), ylim([-1 3]);
line([0 5], [0 0])
line([0 0], [-1 3])

%Pointing the roots on graph
scatter(root_f, [0 0], 'ks');