function grid_agent = adjCheck(grid_state,grid_agent,wSize)

for j=1:100000
    loc = randi(wSize^2);
    if grid_state(loc) == 8
        z = find(grid_agent == 0 ); % locations of house without occupant
        loc1 = z(randi(length(z)));  % random selection of these empty house
        grid_agent(loc1) = grid_agent(loc);
        grid_agent(loc) = 0;
    end
end 

end 