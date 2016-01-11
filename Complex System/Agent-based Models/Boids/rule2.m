% Rule 2: Boids try to keep a small distance away from other objects (including other boids)_

function c = rule2(b_positions,b,i)
c = zeros(1,3);

for j=1:b
   if j~=i 
    diff = b_positions(j,:) - b_positions(i,:);
    d = sqrt(sum(diff.^2));
    if d < 100
        c = c - (b_positions(j,:)-b_positions(i,:));
    end
   end
end 

end 