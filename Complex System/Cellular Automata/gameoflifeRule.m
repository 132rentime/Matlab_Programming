function location = gameoflifeRule(grid,L,size)

% The standard Game of Life is symbolised as "B3/S23": 
% A cell is "Born" if it has exactly 3 neighbours, 
% "Stays alive" if it has 2 or 3 living neighbours; it dies otherwise. 

location = find(grid == 255);
ctr = 0; 

for i=1:length(location)
     % Neighbor examination 
     for j = 1:8
        if grid(i+L) == grid(L) | grid(i-1) == grid(L) | grid(i+1) == grid(L)| grid(i-L) == grid(L)|grid(i-L-1) == grid(L)|grid(i-L+1) == grid(L)|grid(i+L-1) == grid(L)|grid(i+L+1) == grid(L)
            ctr = ctr + 1;
        end 
     end
     
     if ctr == 3
         
        xloc = randi(L,1);
        yloc = randi(L,1);
     elseif ctr < 2
        grid(i) = 0;
     elseif ctr == 2
         grid = 255;
     end 
 end
 
 end 