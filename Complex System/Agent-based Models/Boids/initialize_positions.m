function [b_positions,b_velocity] = initialize_positions(b)
b_positions = zeros(b,3);
b_velocity = zeros(b,3);

for i=1:b
   b_positions(i,:)=25*[2*rand-1;2*rand-1;2*rand-1];
end 

end 
