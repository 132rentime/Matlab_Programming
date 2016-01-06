
lat = xlsread('trial_data.xlsx','B4:B7824');
long = xlsread('trial_data.xlsx','C4:C7824');
z = xlsread('trial_data.xlsx','C4:C7824');

[x,y,utmzone] = deg2utm(lat,long);
output = [x,y,z];

xlswrite('output.xlsx',output);
mesh(output)
