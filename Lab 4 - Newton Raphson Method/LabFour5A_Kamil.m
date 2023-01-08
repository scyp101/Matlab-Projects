    clc, clear
%% Defining Function and Variables

f = @(x) x.^2 - 8*x + 1
syms x
diff = inline(diff(f,x))

x0 = 1;
xi = x0;
n = 0;
y = 1;

%% Program

fprintf("\n")
if diff(xi) == 0
    fprintf("Function has a differentiate of 0 \n")
else
    while y ~= 0
        if y ~= 0
            y = f(xi);
            d = diff(xi);
            xf = xi - (y/d);
            xi = xf;
            n = n + 1;
            y = round(y,4); %Rounding off correct to 4 decimal points
            
            fprintf("Iterations: %.1f,  Root: %.4f,  f(x): %.4f,  Diff(f(x)): %.4f \n", n, xi, y, d)
        else
            break
        end
    end
end 

%% Graph Plotting

temp_x = -2:0.01:2;
for i = 1:length(temp_x)
    t(i) = f(temp_x(i));
end

plot(temp_x,f(temp_x), 'r--'); hold on;
scatter(xi, y, 'ks');
line([0 0], [-15 25])
line([-2 2], [0 0])
legend('f(x)', 'Root')
xlabel('X Axis')
ylabel('Y Axis')
title('Kamil Siddiqui - Root Finding using Newton Raphson')

annotation("textbox", [0.15, 0.14, 0.3, 0.1], 'String', "The function has a root when it cuts x-axis at y=0")

xt = [0.36 0.3];
yt = [0.8 0.65];
annotation('textarrow', xt, yt, 'String', 'f(x) = x^2 - 8x + 1')