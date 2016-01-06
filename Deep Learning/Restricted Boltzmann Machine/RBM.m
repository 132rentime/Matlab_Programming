
% Restricted Boltzmann Machine'

% training process of RBM, consist of random 
% initialization of the weights and biases

v = 6;
h = 5;
e = 0.1; % learning rate

x = [1;0;0;0;1;0];
h = random('Normal',75,40,[6,1]);
b = random('Normal',75,40,[6,1]);
c = random('Normal',75,40,[6,1]);
W = random('Normal',75,40,[6,6]);

%E = -(b'*x)-(c'*h)-h'*W*x; 
%FE = -b'x-(log(exp(h'*(c+W*x))))


% Conditional Probability using sigmoid function

prob_hv = sgm(b,x,W);
h = prob_hv.*10;

% the states of hidden variables {hi} are sampled 
% according to the prob_hv, this is the positive 
% phase of the RBM training 

prob_vh = sgm(c,h',W);

% the negative phase/the 'recontruction' of v' 
% is processed through prob_vh


% Update of RBM weights and biases using contrastive divergence


