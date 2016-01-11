clear all;
% Title : Simulation of the Flocking Behavior of Birds with the Boids Algorithm 
% Author: A. V. Camposano
% Date  : January, 2, 2016

% Data: A group of boids 
% Results: Simulates flocking behaviour with an animation

% Initialization
b = 10;
[b_positions,b_velocity] = initialize_positions(b);

h = stem3(b_positions(:,1),b_positions(:,2),b_positions(:,3),'<','filled','LineStyle','none');

% Boids Position Update
for i=1:10000
h = stem3(b_positions(:,1),b_positions(:,2),b_positions(:,3),'<','filled','LineStyle','none');

hold on
axis manual
axis([-5000 5000 -5000 5000 -5000 5000]);

h.XData = b_positions(:,1);
h.YData = b_positions(:,2);
h.ZData = b_positions(:,3);

drawnow update;
pause(0.05);
hold off;
[b_positions,b_velocity] = move_all_boids_to_new_positions(b_positions,b_velocity,b);
end 

