clc, clear all

%y = x^2 + 3*x - 6

f = [1 3 -6];
r = roots(f);

xi = 0;
xf = 3;
n = 15;
xold = 0;

yi = xi^2 + 3*xi - 6;
yf = xf^2 + 3*xf - 6;

fprintf('Iteration       root       f(x)       Error\n')

if yi*yf < 0
    for i = 1:n
    x3 = (xi+xf)/2;
    y3 = x3^2 + 3*x3 - 6;
    
    if y3 == 0;
        break
    else if yi*y3 < 0
            xf = x3;
        else if y3*yf < 0
                xi = x3;
            end
        end
    end
    
    e = abs((x3-xold)/x3)*100;
    xold = x3;
    
    fprintf('%d              %.4f     %.4f      %.2f\n', i, x3, y3, e)
    
    end
else
    disp("No roots between the limit")
end

a = -8:.2:5;
b = a.*a + 3*a - 6;

plot(a,b, "r--"); hold on;
scatter(r(1),0)
scatter(x3,0)

xlim([-6 4])
ylim([-10 10])
line([0 0], [-10 35])
line([-8 10], [0 0])