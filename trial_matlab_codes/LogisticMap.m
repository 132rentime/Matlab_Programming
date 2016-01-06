% Logistic Function

x = zeros(10,1);
R = 4.0;
x(1) = 0.200000001;
iteration = 80;
for i=1:iteration
    x(i+1) = R*x(i)*(1-x(i));
end 

plot(1:(iteration+1),x);