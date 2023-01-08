clear, clc
%% Defining Equation
f = @(x) - 26 + 85*x - 91*x^2 + 44*x^3 - 8*x^4 + x^5
  
x_i = 0.5;
x_u = 1.0;
n = 5;
e = 0.1;

if f(x_i)*f(x_u) < 0
    for i = 1:n
        x_r = (x_i + x_u)/2;
        fprintf('P%d = %.4f ; f(x) = %.4f \n', i, x_r, f(x_r));
        if abs((x_r-x_u)/x_r) < e || abs((x_r-x_i)/x_r) < e
            break
        end
        if f(x_i)*f(x_r) < 0
            x_u = x_r;
        elseif f(x_u)*f(x_r) < 0
            x_i = x_r;
        end
    end
else
    disp('No roots between the limits')
end

%% Plotting

temp_x = -2:0.01:3;
for i = 1:length(temp_x)
    y(i) = f(temp_x(i));
end

plot(temp_x,y, 'r--'); hold on;
plot(x_r,f(x_r)); hold on;
line([-2 3], [0 0]), line([0 0], [-1200 200])
xlabel('X Axis')
ylabel('Y Axis')
title('Kamil Siddiqui - Root Finding Using Bisection Method Lab3')