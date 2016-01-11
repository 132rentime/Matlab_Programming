function v3 = rule3(b_velocity,b,j)
pVelocity = zeros(1,3);

% perceived velocity
for i=1:b
  if i~=j
    pVelocity = pVelocity + b_velocity(i,:);
  end 
end 
pVelocity = pVelocity/(b-1);
v3 = (pVelocity-b_velocity(j,:))/8;
end     