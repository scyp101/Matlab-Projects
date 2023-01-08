clear all, clc
%% Defining Variables and Matrix

%A = input("Matrix A\n");
%B = input("Matrix B\n");
% Program repetition when using input function

A = [1, 2; 3, 4]
B = [1; 0] %Eigen Vector

e = 1 * 10^-14;
eCalc = e/2;
NewB = B;
oldEigen = 0;
i = 0;

%% Code

for R = 1:10000
    C = A*NewB;
    Eigen = max(C);
    
    NewB = C/Eigen;
    
    eCalc = abs((Eigen - oldEigen)/(Eigen));
    oldEigen = Eigen;
    
    if eCalc < e
        break
    end
    
    i = i + 1;
end

fprintf("Eigen Value: %.4f calculated in %.0f iterations\n", Eigen, i)