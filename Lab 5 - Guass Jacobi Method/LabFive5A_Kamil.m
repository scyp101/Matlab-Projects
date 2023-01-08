clc, clear all
%% Defining Variables and Equation constant as a matrix

yes = 0;
c = 2; d = 0; e = 0; iterations = 0;
xi = 0; yi = 0; zi = 0;

A = [26 6 -1; 6 15 2; 1 15 50];
B = [85; 72; 110];

[R,C] = size(A);

%% Program

for a = 1:R
    row = abs(A(a,:));
    total = sum(row) - row(a);
    
    if row(a) <= total
        fprintf("Error, Dimensional Analysis cannot be verified\n")
        yes = 1;
    end
end

if yes == 0
    InvA = A;
    
    InvA(1,2) = A(1,2) * -1;
    InvA(1,3) = A(1,3) * -1;
    
    InvA(2,1) = A(2,1) * -1;
    InvA(2,3) = A(2,3) * -1;
    
    InvA(3,1) = A(3,1) * -1;
    InvA(3,2) = A(3,2) * -1;
    
    P = [B InvA];
    
    Q = P;
    for b = 1:R
        Q(b,:) = P(b,:) / P(b,c);
        c = c + 1;
    end

    x = xi; y = yi; z = zi; xOld = 0; yOld = 0; zOld = 0;
    while e ~= 1
    xNew = (Q(1,1)) + (Q(1,3) * y) + (Q(1,4) * z);
    yNew = (Q(2,1)) + (Q(2,2) * x) + (Q(2,4) * z);
    zNew = (Q(3,1)) + (Q(3,2) * x) + (Q(3,3) * y);

    xNew = round(xNew,4); yNew = round(yNew,4); zNew = round(zNew,4);
    
    if xNew == xOld && yNew == yOld && zNew == zOld
        e = 1;
    end
    
    xOld = xNew; yOld = yNew; zOld = zNew;
    x = xNew; y = yNew; z = zNew;
    
    iterations = iterations + 1;
    %fprintf("x = %.4f,  y = %.4f,  z = %.4f,  Iteration = %.0f\n", x, y, z, iterations)
    end
    
    fprintf("The roots using Jacobi Method were found out to be the following in %.0f iterations", iterations)
    fprintf("\nx = %.4f,  y = %.4f,  z = %.4f \n", x, y, z)
end