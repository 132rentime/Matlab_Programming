clear all;
% Ehrefest Urn Scheme
% Model I. Assume an urn with w white
% balls and b black balls (w+b=N). At
% each trial, a ball is drawn at random.
% If it is white, replace it by a black
% ball with probability 1.
% If it is black, replace it by a white
% ball with probability 1. 

% 0 represents white balls
% 1 represents black balls

% Urn initialization
loc = datasample(1:20,20,'Replace',false);

x = [0,1];
N = 20;
for i=1:N
    urn(i) = datasample(x,1);
end

w0 = length(find(urn == 0));
% Ball picking
% nth trial: n = 20
size = 10000;
alpha = 0.4;

for i=1:size
w(i)= length(find(urn == 0));
b(i)= length(find(urn == 1));

   loc = randi(20);
   ball = urn(loc);
   if ball == 1  % if it is black
       pick = randsample(x,1,true,[alpha (1-alpha)]);
       urn(loc) = pick;
   elseif ball == 0
       pick = randsample(x,1,true,[alpha (1-alpha)]);
       urn(loc) = pick;
   end
end

[freq,X] = frequency(w);

hold on;
plot(X,freq);
hold off;
exp = N/2 + (w0-N/2)*(1-(2*alpha)/N)^size;


% A slight modification by Johnson and Kotz (1977)
% Model 2. As in Model 1, we have an urn
% with w white balls and b black balls.
% At each trial a ball is drawn at random.
% If it is white, replace it by:
% a black ball with probability alpha.
% white ball with probability 1-alpha.
% If it is black, replace it by:
% a white ball with probability alpha.
% a black ball with probability l-alpha.
% (0 < alpha <= 1) 




