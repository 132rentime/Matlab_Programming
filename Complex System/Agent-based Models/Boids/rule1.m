
% Rule 1: Boids try to fly towards the centre of mass of neighbouring boids

function v1 = rule1(b_positions,b,i)
pCenter  = zeros(1,3);

for j=1:b
    diff = b_positions(j,:) - b_positions(i,:);
    d = sqrt(sum(diff.^2));
    if j~=i & d < 8
    % perceived center of mass
        pCenter = pCenter + b_positions(j,:);
    end 
end 
pCenter = pCenter/(b-1);
v1 = (pCenter - b_positions(i,:))/100;
end 