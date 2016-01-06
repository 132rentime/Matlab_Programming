function state = agent_state(loc,grid_agent,wSize)

loc = loc + (wSize + 3);

% adding edges: 0
world_agent = zeros(wSize+2,wSize+2);
world_agent(2:wSize+1,2:wSize+1)= grid_agent(1:wSize,1:wSize);

% count the number of grid_agent(loc) that is happy. 
ctr = 0;
if (loc-1)~=0 & (loc+1)~=(wSize^2+1) & (loc+wSize)<=(wSize^2) & (loc-wSize)>=1 & (loc-wSize-1)>=1 & (loc-wSize+1)>=1 & (loc+wSize-1)<=(wSize^2) & (loc+wSize+1)<=(wSize^2)
    if grid_agent(loc) == world_agent(loc-1)
        ctr = ctr + 1;
    end 
    
    if grid_agent(loc) == world_agent(loc+1) 
        ctr = ctr + 1;
    end 
    
    if grid_agent(loc) == world_agent(loc+wSize)
        ctr = ctr + 1;
    end 
    
    if grid_agent(loc) == world_agent(loc-wSize)
        ctr = ctr + 1;
    end 
    
    if grid_agent(loc) == world_agent(loc-wSize-1)
        ctr = ctr + 1;
    end 
    
    if grid_agent(loc) == world_agent(loc-wSize+1)
        ctr = ctr + 1;
    end
    
    if grid_agent(loc) == world_agent(loc+wSize-1)
        ctr = ctr + 1;
    end
    
    if grid_agent(loc) == world_agent(loc+wSize+1)
        ctr = ctr + 1;
    end
else 
end

% agent_state decision making depending on the number of neighbors 
% that are happy or unhappy.
if ctr >= 2  
   state = 1; % happy
   ctr = 0; 
else 
   state = 0; % unhappy
   ctr = 0;
end 

end 