function [grid_updated,m] = gridCheck(grid,size)

m = 0;
loc = find(grid >= 4);

while (length(loc))~= 0
    for j=1:length(find(grid>=4))
        i = loc(j);
        grid(i) = grid(i)-4;
        % Adding sand to the neighboring cells
        if (i+1)~= (size*size + 1) & (i+1)<(size*size + 1)
            grid(i+1) = grid(i+1)+1;
        end 
        if (i+size)~=(size*size + 1) & (i+size)<(size*size + 1)
            grid(i+size) = grid(i+size) + 1;
        end 
        
        if (i-1) > 0 & (i-1)~= 0 
            grid(i-1) = grid(i-1)+1;
        end  
        
        if (i-size)> 0 & (i-size)~= 0 
            grid(i-size) = grid(i-size) + 1;
        end 
    end
m = m + 1;
loc = find(grid >= 4);
end 

grid_updated = grid; 
end