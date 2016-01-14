function [dw]= backpropagation(A,neurons,weights,err)
[m,n]=size(A);
dw = cell(1,n);

for i=n:-1:2
    if i == n
        dw{1,i} = err*neurons{1,i}*(1-(neurons{1,i}(:,:))');
    else
        dw{1,i} = neurons{1,i}.*(1-neurons{1,i}).*dw{1,i+1}*weights{1,i};
    end 
end 


x = 0;
y = 0;
end
