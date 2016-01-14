
% calculate the Gutenberg-Richter magnitude -frequency distribution for the
% Philippine earthquake data from 1 January 1990 - 1 January 2016


clear all;
filename = 'D:\Complex System\Earthquake_200NM.xls';
mag = xlsread(filename,'D:D');   
b = unique(mag);
l = length(b);
xLength = length(mag);
freq = zeros(l,1);

for i=1:l
   for j = 1:xLength
     if mag(j)== b(i)
         freq(i) = freq(i)+1;
     end 
   end  
end 
hold on;
axis manual;
axis([0 10 0 10]);
plot(b,log(freq),'o');
hold off;
