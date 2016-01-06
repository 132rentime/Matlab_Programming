% Agent-Based Modelling - Thomas Schelling 
% Dynamic Models of Segregation 


% Dynamic: 
% each cell = house
% each cell can be occupied by "red" or "blue"
% Agent = red/blue
% 10% of the houses are empty
% Agent State = happy/unhappy, depending on the other agents
% in the neighborhood 
% Neighborhood = 8 adjacent cells
% Rule: if 2 (at least) neighbors agent is happy 
%       else unhappy if neighborhood < 2. 

% Iterations: choice a random agent and check to see if it is happy, do
%             nothing, else agent is not happy, choose one of the unoccupied cells at random and move

wSize = 5;
empty = round(0.1*wSize^2);

grid_agent = zeros(wSize,wSize);
grid_state = zeros(wSize,wSize);

sampledLoc = datasample(1:(wSize^2),((wSize^2)-empty),'Replace',false);

for i=1:((wSize^2)-empty)
 grid_agent(sampledLoc(i))=randi(2); % 1 is "red", 2 is "blue"
end 

for i=1:wSize^2
 [grid_state(i),ctr]=agent_state(i,grid_agent,wSize); % 1 is "red", 2 is "blue"
end 


% 1 is happy, 2 is unhappy
%4 possible states: 
%    1 is 1, 1 is 2
%    2 is 1, 2 is 2

