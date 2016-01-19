function [b_positions,b_velocity] = move_all_boids_to_new_positions(b_positions,b_velocity,b)
vlim = 150;

% The three boids rules sufficiently demonstrate a complex emergent flocking behaviour.
for i=1:b
  v1 = rule1(b_positions,b,i); % Boids try to fly towards the centre of mass of neighbouring boids.
  v2 = rule2(b_positions,b,i); % Boids try to keep a small distance away from other objects (including other boids).
  v3 = rule3(b_velocity,b,i); % Boids try to match velocity with near boids.
  v4 = rule4(b_velocity,b,i);
  
  if norm(b_velocity(i,:)) > vlim
    b_velocity(i,:) = b_velocity(i,:)/norm(b_velocity(i,:))*vlim;
  else 
    b_velocity(i,:) = b_velocity(i,:) + v1 + v2 + v3;  % velocity  
  end
 
  b_positions(i,:) = b_positions(i,:) + b_velocity(i,:);      % position
end

end
