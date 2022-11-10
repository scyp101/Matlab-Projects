%Lab 2
%Name and Reg# = Kamil Rasheed Siddiqui - ME201024
%Finding Roots and Plotting

%x = linspace(1,5,100);
x = linspace(-2*pi,2*pi);
%x = (1:3:100);
%x = (1:100);

y = 2+x;
y1 = sin(x);
y2 = cos(x);
y3 = tan(x);

%plot(x,y)
plot(x,y1, '--', x,y2)
title("2D Line Plot - Kamil (ME201024)")
xlabel("X Axis")
ylabel("Y Axis")

%xlim([1 150]);
%ylim([1 150]);