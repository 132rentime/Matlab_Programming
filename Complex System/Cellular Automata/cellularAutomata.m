clear all
% Title : Cellular Automata
% Author: A. V. Camposano
% Date  : 1/19/2015


% Game of Life
% 0 is black
% 255 is white

L = 10;
size = round(0.30*L);
x = [0,255];
grid = zeros(L,L);
world_grid = zeros(L+2,L+2);
% initial state
% starting size = 10

for i=1:size
    xloc = randi(L,1);
    yloc = randi(L,1);
    grid(xloc,yloc) = datasample(255,1);
end

world_grid(2:L+1,2:L+1) = grid(:,:);

location = gameoflifeRule(grid,L,size);
image((grid));

% 