function [state,ctr] = agent_state(loc,grid_agent,wSize)

% count the number of grid_agent(loc) that is happy. 
ctr = 0;
while (loc-1)~=0 & (loc+1)~=(wSize^2+1) & (loc+wSize)<=(wSize^2) & (loc-wSize)>=1 & (loc-wSize-1)>=1 & (loc-wSize+1)>=1 & (loc+wSize-1)<=(wSize^2) & (loc+wSize+1)<=(wSize^2)
    if grid_agent(loc-1) == 1
        ctr = ctr + 1;
    end 
    
    if grid_agent(loc+1) == 1 
        ctr = ctr + 1;
    end 
    
    if grid_agent(loc+wSize) == 1
        ctr = ctr + 1;
    end 
    
    if grid_agent(loc-wSize) == 1
        ctr = ctr + 1;
    end 
    
    if grid_agent(loc-wSize-1) == 1
        ctr = ctr + 1;
    end 
    
    if grid_agent(loc-wSize+1) == 1
        ctr = ctr + 1;
    end
    
    if grid_agent(loc+wSize-1) == 1
        ctr = ctr + 1;
    end
    
    if grid_agent(loc+wSize+1) == 1
        ctr = ctr + 1;
    end
end

% agent_state decision making depending on the number of neighbors 
% that are happy or unhappy.
if ctr >= 2  
   state = 1; % happy 
else 
   state = 0; % unhappy
end 

end 