function [x,y,T] = LaplaceExplicit(n,m,Dx,Dy)
echo off;
numgrid(n,m);
R = 5.0;
T = R*ones(n+1,m+1);
x = [0:Dx:n*Dx];
y = [0:Dy:m*Dy];

for i = 1:n
    T(i,m+1) = T(i,m+1) + R*x(i)*(1-x(i));
    T(i,1) = T(i,1) + R*x(i)*(x(i)-1);
end;

TN = T;
err = TN - T;

% Parameters in the solution
beta = Dx/Dy;
denom = 2*(1+beta^2);

% Iterative procedure
epsilon = 1e-5;
imax = 1000;
k = 1;

% Calculation loop
while k <= imax
    for i = 2:n
        for j = 2:m
            TN(i,j) = (T(i-1,j) + T(i+1,j) + beta^2*(T(i,j-1)+T(i,j+1)))/denom;
            err(i,j) = abs(TN(i,j)) - T(i,j);
        end;
    end;
    T = TN;
    k = k + 1;
    errmax = max(max(err));
    if errmax < epsilon
        [X,Y] =meshgrid(x,y);
        figure(2); contour(X,Y,T',20); xlabel('x');ylabel('y');
        title('Laplace equation solution - Dirichlet boundary conditions - Explicit');
        figure(3); surfc(X,Y,T'); xlabel('x');ylabel('y');zlabel('T(x,y)');
        title('Laplace equation solution - Dirichlet boundary conditions - Explicit');
        fprintf('Convergence achieved after %i iterations. \n',k);
        fprintf('See the following figure: \n');
        fprintf('=============================\n');
        fprintf('Figure 1 - sketch of computational grid \n');
        fprintf('Figure 2 - contour plot of temperature \n');
        fprintf('Figure 3 - surface plot of temperature \n');
     return
    end;
end;
fprintf('\n No convergence after %i iterations.',k);


 
 
 
    
  