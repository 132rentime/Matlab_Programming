% Sandpile file 
size = 3; 
grid = zeros(size,size); 
n = 0;
iteration = 1000;
C = zeros(iteration,1);

for i=1:iteration
location = randi(size*size,1);
grid(location) = grid(location)+1;


while (grid(location) == 4)
   [grid,m] = gridCheck(grid,size);
   % avalanche size C (as a result of avalanche
   C(i) = m;
end 

x = unique(C); 
y = histcounts(C);

xls = [x',y(2:length(y))'];
xlswrite('J:\Physics\Complex System\Sandpile Modelling - with my matlab program\plot.xls',xls);
f = @()gridCheck(grid,size);
t = timeit(f,2);
end