% Multilayer Perceptron 

% Architecture of the Neural Network 

% Assuming a single hidden layer
input = 2;      % # of neurons in the input layer
hidden = 2;     % # of neurons in the hidden layer 
output = 1;     % # of neurons in the output layer

A = [input hidden output];
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

% Feedforward processing
[v,neurons]=feedforward(A,neurons,weights);

% Error processing 
err = errorProcessing(A,neurons,expectOut);

% Backpropagation 
dw= backpropagation(A,neurons,weights,err);


weights{1}= dw{2} + weights{1};
weights{2}= dw{3} + weights{2};
