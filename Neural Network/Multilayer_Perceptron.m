% Multilayer Perceptron 

% Architecture of the Neural Network 

% Assuming a single hidden layer
input = 2;      % # of neurons in the input layer
hidden = 2;     % # of neurons in the hidden layer 
output = 1;     % # of neurons in the output layer
lr = 1;        % learning rate

A = [input hidden output];
% # of layers
[m,n]=size(A);  % Size determination of our Neural Network Architecture

% Space Allocation for the data
neurons = cell(1,n);    % n is the size of the architecture
weights = cell(1,n-1);  % the # of neuron layer = # of weight layer

% Trial input and weights
bias = 1;
neurons{1,1} = [1;1;bias];
weights{1,1} = [-0.7,0.1,-1;-0.1,0.8,-1];
weights{1,2} = [-0.8;0.9;-1];
expectOut = 0;

% for cycle = 1:10
    
% Presentation of Training Set
[v,neurons]=feedforward(A,neurons,weights);   % Feedforward processing
err = errorProcessing(A,neurons,expectOut);   % Error processing 
delta= backpropagation(A,neurons,weights,err);   % Backpropagation 
dw = weightUpdates(A,neurons,delta,lr);% Weight Updates

% end 


