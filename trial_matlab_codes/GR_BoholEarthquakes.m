
% calculate the Gutenberg-Richter magnitude -frequency distribution for the
% Philippine earthquake data from 1 January 1990 - 1 January 2016


clear all;
filename = 'D:\Complex System\Earthquake_200NM.xls';
mag = xlsread(filename,'D:D');  

[freq,b] = frequency(mag);

hold on;
axis manual;
axis([0 10 0 10]);
plot(b,log(freq),'o');
hold off;
