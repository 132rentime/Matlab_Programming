function dw = weightUpdates(A,neurons,delta,lr)
[m,n]=size(A);
dw = cell(1,n);

for i=(n:-1:2)
    dw{1,i} = lr*neurons{1,i}*delta{1,i};
end 

end 