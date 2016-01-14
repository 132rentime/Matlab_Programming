function [v,neurons] = feedforward(A, neurons, weights)

[m,n] = size(A);
y = cell(1,n-2);
v = cell(1,n-1);

v{1,1} = neurons{1,1}(:,:)'*weights{1,1}(:,:)';
neurons{1,2} =[1./(1+exp(-v{1,1})) 1];

v{1,2} = neurons{1,2}(:,:)*weights{1,2}(:,:);
neurons{1,3} = [1./(1+exp(-v{1,2}))];

end
